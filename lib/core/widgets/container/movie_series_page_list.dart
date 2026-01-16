import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/core/widgets/animation/animated_card_item.dart';
import 'package:movie_series_app/core/widgets/text/indicator_page.dart';

class MovieSeriesPageList extends HookWidget {
  const MovieSeriesPageList({
    required this.results,
    required this.onChangePage,
    this.currentIndex = 0,
    this.onSelect,
    super.key,
  });

  final List<ResultModel> results;
  final ValueSetter<int> onChangePage;
  final int currentIndex;
  final ValueSetter<int>? onSelect;

  @override
  Widget build(BuildContext context) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    return Stack(
      children: <Widget>[
        Center(
          child: PageView.builder(
            controller: pageController,
            itemCount: results.length,
            physics: switch (isEnabledScroll.value) {
              true => const BouncingScrollPhysics(),
              false => const NeverScrollableScrollPhysics(),
            },
            onPageChanged: (index) => onChangePage(index + 1),
            itemBuilder: (_, index) => AnimatedCardItem(
              id: results[index].id,
              name: results[index].originalTitle,
              voteAverage: results[index].voteAverage,
              imageUrl: results[index].posterPath,
              onPress: () => onSelect?.call(index),
              isCurrent: (currentIndex - 1) == index,
              onExpanded: (value) => isEnabledScroll.value = !value,
            ),
          ),
        ),
        if (results.isNotEmpty)
          Positioned.fill(
            child: IndicatorPage(start: currentIndex, total: results.length),
          ),
      ],
    );
  }
}
