import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/core/provider/brightness_mode_provider.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/core/widgets/custom_app_bar.dart';
import 'package:movie_series_app/features/genre_list/widgets/genre_list_section.dart';
import 'package:movie_series_app/features/series_list/view/widgets/series_list_body.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class SeriesListView extends HookConsumerWidget {
  const SeriesListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentGenre = useState<int?>(null);
    final titleGenre = useState<String?>(null);

    final currentIndex = useState(1);

    return Scaffold(
      appBar: CustomAppBar(
        title: titleGenre.value ?? context.l10n.genreDefaultTitle,
        onChangeTheme: () => unawaited(
          ref.read(brightnessModeProvider.notifier).setTheme(),
        ),
        onRestore: () {
          currentGenre.value = titleGenre.value = null;
          currentIndex.value = 1;
        },
        bottomChild: GenreListSection(
          id: currentGenre.value,
          genreType: GenreType.tv,
          onSelect: (genre) {
            currentGenre.value = genre.id;
            titleGenre.value = genre.name;

            currentIndex.value = 1;
          },
        ),
      ),
      body: SeriesListBody(
        currentIndex: currentIndex.value,
        genreId: currentGenre.value,
        onChangePage: (index) => currentIndex.value = index,
        onSelectSeries: (series) => context.go(
          AppRoutePath.series.detail.define('${series.id}').path,
          extra: {'posterPath': series.posterPath},
        ),
      ),
    );
  }
}
