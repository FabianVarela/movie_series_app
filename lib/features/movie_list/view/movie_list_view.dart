import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/core/provider/brightness_mode_provider.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/core/widgets/custom_app_bar.dart';
import 'package:movie_series_app/core/widgets/filter_bottom_sheet.dart';
import 'package:movie_series_app/features/genre_list/widgets/genre_list_section.dart';
import 'package:movie_series_app/features/movie_list/view/widgets/movie_list_body.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class MovieListView extends HookConsumerWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentGenre = useState<int?>(null);
    final titleGenre = useState(context.l10n.popularTitle);

    final currentIndex = useState(1);
    final currentOption = useState<MovieOption?>(MovieOption.popular);

    return Scaffold(
      appBar: CustomAppBar(
        title: titleGenre.value,
        onChangeTheme: () => unawaited(
          ref.read(brightnessModeProvider.notifier).setTheme(),
        ),
        onOpenFilter: () async {
          final option = await _openMovieFilter(context, currentOption.value);
          if (option == currentOption.value || !context.mounted) return;

          titleGenre.value = switch (option) {
            .nowPlaying => context.l10n.nowPlayingTitle,
            .popular => context.l10n.popularTitle,
            .topRated => context.l10n.topRatedTitle,
            .upcoming => context.l10n.upcomingTitle,
            _ => '',
          };

          currentOption.value = option;
          currentGenre.value = null;
          currentIndex.value = 1;
        },
        bottomChild: GenreListSection(
          id: currentGenre.value,
          genreType: GenreType.movie,
          onSelect: (genre) {
            if (currentGenre.value == genre.id) return;

            currentGenre.value = genre.id;
            titleGenre.value = genre.name;

            currentIndex.value = 1;
            currentOption.value = null;
          },
        ),
      ),
      body: MovieListBody(
        currentIndex: currentIndex.value,
        arguments: (option: currentOption.value, genreId: currentGenre.value),
        onChangePage: (index) => currentIndex.value = index,
        onSelectMovie: (movie) => context.go(
          AppRoutePath.movies.detail.define('${movie.id}').path,
          extra: {'posterPath': movie.posterPath},
        ),
      ),
    );
  }

  Future<MovieOption?> _openMovieFilter(
    BuildContext context,
    MovieOption? option,
  ) async {
    const optionList = MovieOption.values;
    final result = await FilterBottomSheet.show(
      context,
      initialFilter: option != null ? optionList.indexOf(option) : null,
      optionFilterList: [
        for (final item in optionList)
          (
            icon: switch (item) {
              .nowPlaying => Icons.play_circle_outline,
              .popular => Icons.local_fire_department_outlined,
              .topRated => Icons.star_outline,
              .upcoming => Icons.calendar_today_outlined,
            },
            title: switch (item) {
              .nowPlaying => context.l10n.nowPlayingTitle,
              .popular => context.l10n.popularTitle,
              .topRated => context.l10n.topRatedTitle,
              .upcoming => context.l10n.upcomingTitle,
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
