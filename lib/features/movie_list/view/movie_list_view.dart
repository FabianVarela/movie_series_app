import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/features/movie_list/repository/movie_list_repository.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_body.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_genres.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_header.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';

class MovieListView extends HookConsumerWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genders = ref.watch(fetchGendersProvider(language: 'es-CO'));

    final currentGender = useState<int?>(null);
    final titleGender = useState<String?>(null);
    final currentIndex = useState(1);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                genders.maybeWhen(
                  data: (gender) => MovieListGenres(
                    id: currentGender.value,
                    genders: gender.genders,
                    onSelectGenre: (genre) {
                      currentGender.value = genre.id;
                      titleGender.value = genre.name;
                      currentIndex.value = 1;
                    },
                  ),
                  orElse: Offstage.new,
                ),
                Expanded(
                  child: _MovieList(
                    currentIndex: currentIndex.value,
                    genreId: currentGender.value,
                    onChangePage: (index) => currentIndex.value = index,
                  ),
                ),
              ],
            ),
            MovieListHeader(
              title: titleGender.value ?? context.l10n.movieListDefaultTitle,
              onRestore: () {
                currentGender.value = null;
                titleGender.value = null;
                currentIndex.value = 1;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieList extends HookConsumerWidget {
  const _MovieList({
    required this.currentIndex,
    this.genreId,
    required this.onChangePage,
  });

  final int currentIndex;
  final int? genreId;
  final ValueSetter<int> onChangePage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(
      fetchMoviesProvider(language: 'es-CO', genreId: genreId),
    );

    return movies.when(
      data: (movie) => Stack(
        children: <Widget>[
          MovieListBody(
            movies: movie.movies,
            index: currentIndex,
            onChangePage: onChangePage,
            onSelectMovie: (movie) => context.go(
              '/detail/${movie.id}',
              extra: {'posterPath': movie.posterPath},
            ),
          ),
          if (movies.hasValue)
            Positioned.fill(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  context.l10n.quantityList(
                    currentIndex,
                    movies.value?.movies.length ?? 0,
                  ),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => ErrorMessage(message: context.l10n.errorMovieListText),
    );
  }
}
