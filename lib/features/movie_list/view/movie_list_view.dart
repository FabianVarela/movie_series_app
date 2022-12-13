import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/features/genre_list/repository/genre_list_repository.dart';
import 'package:movie_list_bloc/features/genre_list/widgets/genre_list_section.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_body.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_header.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class MovieListView extends HookConsumerWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentGender = useState<int?>(null);
    final titleGender = useState<String?>(null);

    final currentIndex = useState(1);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                GenreListSection(
                  id: currentGender.value,
                  genreType: GenreType.movie,
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
                    onChangePage: (index) => currentIndex.value = index,
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
