part of '../series_list_view.dart';

class SeriesListBody extends ConsumerWidget {
  const SeriesListBody({
    required this.onChangePage,
    required this.onSelectSeries,
    required this.arguments,
    this.currentIndex = 0,
    super.key,
  });

  final ValueSetter<int> onChangePage;
  final ValueSetter<ResultModel> onSelectSeries;
  final ({SeriesOption? option, int? genreId}) arguments;
  final int currentIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final seriesList = ref.watch(
      fetchSeriesProvider(
        option: arguments.option ?? .popular,
        genreId: arguments.genreId,
        language: locale.requireValue?.languageCode,
      ),
    );

    return seriesList.when(
      data: (series) => MovieSeriesPageList(
        results: series.results,
        currentIndex: currentIndex,
        onChangePage: onChangePage,
        onSelect: (value) => onSelectSeries(series.results[value]),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, _) => ErrorMessage(message: context.l10n.errorSeriesListText),
    );
  }
}
