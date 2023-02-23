import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/animated_card_item.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/core/widgets/indicator_page.dart';
import 'package:movie_list_bloc/features/series_list/model/series_list_model.dart';
import 'package:movie_list_bloc/features/series_list/repository/series_list_repository.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class SeriesListBody extends HookConsumerWidget {
  const SeriesListBody({
    required this.onChangePage,
    required this.onSelectSeries,
    super.key,
    this.currentIndex = 0,
    this.genreId,
  });

  final int currentIndex;
  final int? genreId;
  final ValueSetter<int> onChangePage;
  final ValueSetter<SeriesModel> onSelectSeries;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    final locale = ref.watch(languageProvider);
    final seriesList = ref.watch(
      fetchSeriesProvider(
        genreId: genreId,
        language: locale.requireValue?.languageCode,
      ),
    );

    return seriesList.when(
      data: (series) => Stack(
        children: <Widget>[
          Center(
            child: PageView.builder(
              controller: pageController,
              itemCount: series.series.length,
              physics: isEnabledScroll.value
                  ? const BouncingScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              onPageChanged: (index) => onChangePage(index + 1),
              itemBuilder: (_, index) {
                final item = series.series[index];
                return AnimatedCardItem(
                  id: item.id,
                  name: item.originalName,
                  voteAverage: item.voteAverage,
                  imageUrl: item.posterPath,
                  onPress: () => onSelectSeries(item),
                  isCurrent: (currentIndex - 1) == index,
                  onExpanded: (value) => isEnabledScroll.value = !value,
                );
              },
            ),
          ),
          if (seriesList.hasValue)
            Positioned.fill(
              child: IndicatorPage(
                start: currentIndex,
                total: seriesList.value?.series.length ?? 0,
              ),
            ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => ErrorMessage(message: context.l10n.errorSeriesListText),
    );
  }
}
