import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/core/provider/brightness_mode_provider.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/core/widgets/custom_app_bar.dart';
import 'package:movie_series_app/core/widgets/error_message.dart';
import 'package:movie_series_app/core/widgets/filter_bottom_sheet.dart';
import 'package:movie_series_app/core/widgets/movie_series_page_list.dart';
import 'package:movie_series_app/features/genre_list/widgets/genre_list_section.dart';
import 'package:movie_series_app/features/series_list/repository/series_list_repository.dart';
import 'package:movie_series_app/l10n/l10n.dart';

part 'widgets/series_list_body.dart';

class SeriesListView extends HookConsumerWidget {
  const SeriesListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentGenre = useState<int?>(null);
    final titleGenre = useState(context.l10n.popularTitle);

    final currentIndex = useState(1);
    final currentOption = useState<SeriesOption?>(SeriesOption.popular);

    return Scaffold(
      appBar: CustomAppBar(
        title: titleGenre.value,
        onChangeTheme: () => unawaited(
          ref.read(brightnessModeProvider.notifier).setTheme(),
        ),
        onOpenFilter: () async {
          final option = await _openSeriesFilter(context, currentOption.value);
          if (option == currentOption.value || !context.mounted) return;

          titleGenre.value = switch (option) {
            .airingToday => context.l10n.airingTodayTitle,
            .onTheAir => context.l10n.onTheAirTitle,
            .popular => context.l10n.popularTitle,
            .topRated => context.l10n.topRatedTitle,
            _ => '',
          };

          currentGenre.value = null;
          currentIndex.value = 1;
        },
        bottomChild: GenreListSection(
          id: currentGenre.value,
          genreType: GenreType.tv,
          onSelect: (genre) {
            if (currentGenre.value == genre.id) return;

            currentGenre.value = genre.id;
            titleGenre.value = genre.name;

            currentIndex.value = 1;
            currentOption.value = null;
          },
        ),
      ),
      body: SeriesListBody(
        currentIndex: currentIndex.value,
        arguments: (option: currentOption.value, genreId: currentGenre.value),
        onChangePage: (index) => currentIndex.value = index,
        onSelectSeries: (series) => context.go(
          AppRoutePath.series.detail.define('${series.id}').path,
          extra: {'posterPath': series.posterPath},
        ),
      ),
    );
  }

  Future<SeriesOption?> _openSeriesFilter(
    BuildContext context,
    SeriesOption? option,
  ) async {
    const optionList = SeriesOption.values;
    final result = await FilterBottomSheet.show(
      context,
      initialFilter: option != null ? optionList.indexOf(option) : null,
      optionFilterList: [
        for (final item in optionList)
          (
            icon: switch (item) {
              .airingToday => Icons.play_circle_outline,
              .onTheAir => Icons.calendar_today_outlined,
              .popular => Icons.local_fire_department_outlined,
              .topRated => Icons.star_outline,
            },
            title: switch (item) {
              .airingToday => context.l10n.airingTodayTitle,
              .onTheAir => context.l10n.onTheAirTitle,
              .popular => context.l10n.popularTitle,
              .topRated => context.l10n.topRatedTitle,
            },
          ),
      ],
    );

    return switch (result) {
      _ when result == null => option,
      _ => optionList[result],
    };
  }
}
