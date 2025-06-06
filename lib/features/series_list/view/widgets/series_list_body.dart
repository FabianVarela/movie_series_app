import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/widgets/error_message.dart';
import 'package:movie_series_app/core/widgets/movie_series_page_list.dart';
import 'package:movie_series_app/features/series_list/model/series_list_model.dart';
import 'package:movie_series_app/features/series_list/repository/series_list_repository.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class SeriesListBody extends ConsumerWidget {
  const SeriesListBody({
    required this.onChangePage,
    required this.onSelectSeries,
    this.currentIndex = 0,
    this.genreId,
    super.key,
  });

  final ValueSetter<int> onChangePage;
  final ValueSetter<SeriesModel> onSelectSeries;
  final int currentIndex;
  final int? genreId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final seriesList = ref.watch(
      fetchSeriesProvider(
        genreId: genreId,
        language: locale.requireValue?.languageCode,
      ),
    );

    return seriesList.when(
      data: (series) {
        return MovieSeriesPageList.series(
          series: series.series,
          currentIndex: currentIndex,
          onChangePage: onChangePage,
          onSelect: (value) => onSelectSeries(series.series[value]),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, _) => ErrorMessage(message: context.l10n.errorSeriesListText),
    );
  }
}
