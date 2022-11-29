import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/bloc/detail/movie_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:movie_list_bloc/view/movie_detail/widgets/movie_detail_body.dart';
import 'package:movie_list_bloc/view/movie_detail/widgets/movie_detail_credits.dart';
import 'package:movie_list_bloc/view/movie_detail/widgets/movie_detail_image.dart';
import 'package:movie_list_bloc/view/movie_detail/widgets/movie_detail_trailers.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    super.key,
    required this.movieId,
    required this.movieImageUrl,
  });

  final int movieId;
  final String movieImageUrl;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MovieBloc(context.read<MovieRepository>()),
      child: MovieDetailView(movieId: movieId, movieImageUrl: movieImageUrl),
    );
  }
}

class MovieDetailView extends HookWidget {
  const MovieDetailView({
    super.key,
    required this.movieId,
    required this.movieImageUrl,
  });

  final int movieId;
  final String movieImageUrl;

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        context.read<MovieBloc>().getMovieDetails(movieId);
        return null;
      },
      const [],
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MovieDetailImage(
              id: movieId,
              imageUrl: movieImageUrl,
              onDrag: () => Navigator.pop(context),
            ),
            BlocBuilder<MovieBloc, MovieState>(
              builder: (_, state) => state.when(
                initial: Offstage.new,
                loading: () => SizedBox(
                  height: MediaQuery.of(context).size.height * .7,
                  child: const Center(child: CircularProgressIndicator()),
                ),
                success: (movie, credit, trailer) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MovieDetailBody(movie: movie),
                    MovieDetailCredits(
                      casts: credit.casts,
                      onSelectActor: (id, path) => context.go(
                        '/detail/$movieId/actor/$id',
                        extra: {
                          'posterPath': movieImageUrl,
                          'actorImage': path,
                        },
                      ),
                    ),
                    MovieDetailTrailers(trailers: trailer.trailers),
                  ],
                ),
                error: (error) => const ErrorMessage(
                  message: 'Error getting movie detail',
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
