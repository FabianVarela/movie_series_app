import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_body.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_genres.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_header.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class MovieListView extends HookConsumerWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentGender = useState<int?>(null);
    final titleGender = useState<String?>(null);

    final currentIndex = useState(1);
    final isEnabledScroll = useState(true);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                MovieListGenres(
                  id: currentGender.value,
                  onSelect: (gender) {
                    currentGender.value = gender.id;
                    titleGender.value = gender.name;

                    currentIndex.value = 1;
                  },
                ),
                Expanded(
                  child: MovieListBody(
                    currentIndex: currentIndex.value,
                    genderId: currentGender.value,
                    enabledScroll: isEnabledScroll.value,
                    onChangePage: (index) => currentIndex.value = index,
                    onEnabledScroll: (value) => isEnabledScroll.value = !value,
                    onSelectMovie: (movie) => context.go(
                      '/detail/${movie.id}',
                      extra: {'posterPath': movie.posterPath},
                    ),
                  ),
                ),
              ],
            ),
            MovieListHeader(
              title: titleGender.value ?? context.l10n.movieListDefaultTitle,
              onRestore: () {
                currentGender.value = null;
                titleGender.value = null;

                currentIndex.value = 1;
              },
            ),
          ],
        ),
      ),
    );
  }
}
