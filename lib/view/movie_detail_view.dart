import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/detail/credits/credits_state.dart';
import 'package:movie_list_bloc/bloc/detail/movie/movie_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/credits/movie_credits_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie/movie_state.dart';
import 'package:movie_list_bloc/bloc/detail/trailers/movie_trailers_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/trailers/trailer_state.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/view/widget/credit_item.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
import 'package:movie_list_bloc/view/widget/movie_detail_item.dart';
import 'package:movie_list_bloc/view/widget/trailer_item.dart';

class MovieDetail extends HookWidget {
  const MovieDetail({
    Key? key,
    required this.movieId,
    required this.movieImageUrl,
  }) : super(key: key);

  final int movieId;
  final String movieImageUrl;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.microtask(() {
        locator<MovieBloc>().getMovie(movieId);
        locator<TrailersBloc>().getTrailers(movieId);
        locator<CreditsBloc>().getCredits(movieId);
      });
    }, []);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _bannerImage(context),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  _detailSection(),
                  _creditsSection(),
                  _trailerSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bannerImage(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (DragUpdateDetails details) {
        if (details.delta.dy > 0) {
          Navigator.pop(context);
        }
      },
      child: SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Hero(
          tag: 'Image_$movieId',
          child: Image.network(movieImageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _detailSection() {
    return BlocBuilder<MovieBloc, MovieState>(builder: (context, state) {
      if (state is MovieLoadingState) {
        return const Center(child: CircularProgressIndicator());
      }

      if (state is MovieErrorState) {
        return ErrorMessage(message: state.message, fontSize: 15);
      }

      if (state is MovieSuccessState) {
        return MovieDetailItem(movie: state.movie);
      }

      return const Offstage();
    });
  }

  Widget _creditsSection() {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Cast',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        BlocBuilder<CreditsBloc, CreditsState>(builder: (context, state) {
          if (state is CreditsLoadingState) {
            return const CircularProgressIndicator();
          }

          if (state is CreditsErrorState) {
            return ErrorMessage(message: state.message, fontSize: 15);
          }

          if (state is CreditsSuccessState) {
            if (state.credits.casts.isEmpty) {
              return const Center(
                child: Text(
                  'No cast available',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              );
            } else {
              return SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: state.credits.casts.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) =>
                      CreditItem(cast: state.credits.casts[index]),
                ),
              );
            }
          }

          return const Offstage();
        }),
      ],
    );
  }

  Widget _trailerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Trailer',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        BlocBuilder<TrailersBloc, TrailersState>(builder: (context, state) {
          if (state is TrailersLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is TrailersErrorState) {
            return ErrorMessage(message: state.message, fontSize: 15);
          }

          if (state is TrailersSuccessState) {
            if (state.trailers.trailers.isEmpty) {
              return const Center(
                child: Text(
                  'No trailer available',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              );
            } else {
              return SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: state.trailers.trailers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) =>
                      TrailerItem(trailer: state.trailers.trailers[index]),
                ),
              );
            }
          }

          return const Offstage();
        }),
      ],
    );
  }
}
