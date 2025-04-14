import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/core/widgets/movie_series_page_list.dart';
import 'package:movie_list_bloc/features/movie_list/model/movies_model.dart';
import 'package:movie_list_bloc/features/movie_list/repository/movie_list_repository.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class MovieListBody extends ConsumerWidget {
  const MovieListBody({
    required this.onChangePage,
    required this.onSelectMovie,
    this.currentIndex = 0,
    this.genreId,
    super.key,
  });

  final ValueSetter<int> onChangePage;
  final ValueSetter<MovieModel> onSelectMovie;
  final int currentIndex;
  final int? genreId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final movies = ref.watch(
      fetchMoviesProvider(
        genreId: genreId,
        language: locale.requireValue?.languageCode,
      ),
    );

    return movies.when(
      data: (movie) {
        return MovieSeriesPageList.movies(
          movies: movie.movies,
          onChangePage: onChangePage,
          currentIndex: currentIndex,
          onSelect: (value) => onSelectMovie(movie.movies[value]),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => ErrorMessage(message: context.l10n.errorMovieListText),
    );
  }
}
