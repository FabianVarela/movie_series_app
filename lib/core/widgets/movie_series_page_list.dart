import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_series_app/core/widgets/animated_card_item.dart';
import 'package:movie_series_app/core/widgets/indicator_page.dart';
import 'package:movie_series_app/features/movie_list/model/movies_model.dart';
import 'package:movie_series_app/features/series_list/model/series_list_model.dart';

enum ListSection { movies, series }

class MovieSeriesPageList extends HookWidget {
  const MovieSeriesPageList.movies({
    required List<MovieModel> this.movies,
    required this.onChangePage,
    this.currentIndex = 0,
    this.onSelect,
    super.key,
  }) : section = ListSection.movies,
       series = null;

  const MovieSeriesPageList.series({
    required List<SeriesModel> this.series,
    required this.onChangePage,
    this.currentIndex = 0,
    this.onSelect,
    super.key,
  }) : section = ListSection.series,
       movies = null;

  final ValueSetter<int> onChangePage;
  final int currentIndex;
  final ListSection section;
  final ValueSetter<int>? onSelect;
  final List<MovieModel>? movies;
  final List<SeriesModel>? series;

  @override
  Widget build(BuildContext context) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    final listSize = switch (section) {
      ListSection.movies => movies!.length,
      ListSection.series => series!.length,
    };

    return Stack(
      children: <Widget>[
        Center(
          child: PageView.builder(
            controller: pageController,
            itemCount: listSize,
            physics: switch (isEnabledScroll.value) {
              true => const BouncingScrollPhysics(),
              false => const NeverScrollableScrollPhysics(),
            },
            onPageChanged: (index) => onChangePage(index + 1),
            itemBuilder: (_, index) {
              final item = switch (section) {
                ListSection.movies => movies![index],
                ListSection.series => series![index],
              };

              return AnimatedCardItem(
                id: switch (section) {
                  ListSection.movies => _castToMovie(item).id,
                  ListSection.series => _castToSeries(item).id,
                },
                name: switch (section) {
                  ListSection.movies => _castToMovie(item).originalTitle,
                  ListSection.series => _castToSeries(item).originalName,
                },
                voteAverage: switch (section) {
                  ListSection.movies => _castToMovie(item).voteAverage,
                  ListSection.series => _castToSeries(item).voteAverage,
                },
                imageUrl: switch (section) {
                  ListSection.movies => _castToMovie(item).posterPath,
                  ListSection.series => _castToSeries(item).posterPath,
                },
                onPress: () => onSelect?.call(index),
                isCurrent: (currentIndex - 1) == index,
                onExpanded: (value) => isEnabledScroll.value = !value,
              );
            },
          ),
        ),
        if (listSize > 0)
          Positioned.fill(
            child: IndicatorPage(start: currentIndex, total: listSize),
          ),
      ],
    );
  }

  MovieModel _castToMovie(Object item) => item as MovieModel;

  SeriesModel _castToSeries(Object item) => item as SeriesModel;
}
