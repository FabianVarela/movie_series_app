import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/widgets/error_message.dart';
import 'package:movie_series_app/core/widgets/movie_series_page_list.dart';
import 'package:movie_series_app/features/movie_list/repository/movie_list_repository.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class MovieListBody extends ConsumerWidget {
  const MovieListBody({
    required this.onChangePage,
    required this.onSelectMovie,
    required this.arguments,
    this.currentIndex = 0,
    super.key,
  });

  final ValueSetter<int> onChangePage;
  final ValueSetter<ResultModel> onSelectMovie;
  final ({MovieOption? option, int? genreId}) arguments;
  final int currentIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final movies = ref.watch(
      fetchMoviesProvider(
        option: arguments.option ?? .popular,
        genreId: arguments.genreId,
        language: locale.requireValue?.languageCode,
      ),
    );

    return movies.when(
      data: (movie) => MovieSeriesPageList(
        results: movie.results,
        onChangePage: onChangePage,
        currentIndex: currentIndex,
        onSelect: (value) => onSelectMovie(movie.results[value]),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, _) => ErrorMessage(message: context.l10n.errorMovieListText),
    );
  }
}
