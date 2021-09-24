import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/view/movie_detail_view.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
import 'package:movie_list_bloc/view/widget/movie_list_item.dart';

class MovieList extends HookWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentGender = useState<String?>(null);

    final currentIndex = useState(0);
    final length = useState(0);

    useEffect(() {
      Future.microtask(
        () => locator<MoviesBloc>().fetchMovies(genreId: currentGender.value),
      );
    }, [currentGender]);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: <Widget>[
          _Body(
            index: currentIndex.value,
            onSelectMovie: (movie) => _openDetailPage(context, movie),
            onChangePage: (index, size) {
              currentIndex.value = index;
              length.value = size;
            },
          ),
          const _Header(title: 'Popular Movies'),
          Positioned.fill(
            child: _Footer(index: currentIndex.value, length: length.value),
          ),
        ],
      ),
    );
  }

  void _openDetailPage(BuildContext ctx, MovieModel movie) {
    Navigator.push<void>(
      ctx,
      PageRouteBuilder<dynamic>(
        pageBuilder: (_, __, ___) => MovieDetail(
          movieId: movie.id,
          movieImageUrl: 'https://image.tmdb.org/t/p/w185${movie.posterPath}',
        ),
        transitionsBuilder: (_, animation, __, child) =>
            Transform.scale(scale: animation.value, child: child),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Icon(Icons.search, color: Colors.white),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const Icon(Icons.my_location, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class _Body extends HookWidget {
  const _Body({
    Key? key,
    this.index = -1,
    required this.onSelectMovie,
    required this.onChangePage,
  }) : super(key: key);

  final int index;
  final ValueSetter<MovieModel> onSelectMovie;
  final Function(int, int) onChangePage;

  @override
  Widget build(BuildContext context) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    return BlocBuilder<MoviesBloc, MovieListState>(builder: (context, state) {
      return state.when(
        initial: () => const Offstage(),
        loading: () {
          Future<void>.microtask(() => onChangePage(-1, 0));
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          );
        },
        success: (data) {
          Future<void>.microtask(
            () => onChangePage(index == -1 ? 0 : index, data.movies.length),
          );

          return Align(
            child: PageView.builder(
              itemCount: data.movies.length,
              physics: isEnabledScroll.value
                  ? const BouncingScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (i) => onChangePage(i, data.movies.length),
              itemBuilder: (_, i) => MovieListItem(
                itemModel: data.movies[i],
                onPressItem: onSelectMovie,
                imageUri: 'https://image.tmdb.org/t/p/w185',
                isCurrent: index == i,
                onExpanded: (enabled) => isEnabledScroll.value = enabled,
              ),
            ),
          );
        },
        error: (error) {
          Future<void>.microtask(() => onChangePage(-1, 0));
          return ErrorMessage(message: error);
        },
      );
    });
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key, this.index = 0, this.length = 0}) : super(key: key);

  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          '${index + 1} / $length',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
