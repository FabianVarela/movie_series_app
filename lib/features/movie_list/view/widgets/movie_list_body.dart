import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/model/movies_model.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/features/movie_list/repository/movie_list_repository.dart';
import 'package:movie_list_bloc/features/movie_list/view/widgets/movie_list_item.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class MovieListBody extends HookConsumerWidget {
  const MovieListBody({
    super.key,
    this.currentIndex = 0,
    this.genderId,
    this.enabledScroll = false,
    required this.onChangePage,
    required this.onEnabledScroll,
    required this.onSelectMovie,
  });

  final int currentIndex;
  final int? genderId;
  final bool enabledScroll;
  final ValueSetter<int> onChangePage;
  final ValueSetter<bool> onEnabledScroll;
  final ValueSetter<MovieModel> onSelectMovie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(viewportFraction: .8);

    final locale = ref.watch(languageProvider);
    final movies = ref.watch(
      fetchMoviesProvider(
        genreId: genderId,
        language: locale.requireValue?.languageCode,
      ),
    );

    return movies.when(
      data: (movie) => Stack(
        children: <Widget>[
          Center(
            child: PageView.builder(
              controller: pageController,
              itemCount: movie.movies.length,
              physics: enabledScroll
                  ? const BouncingScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              onPageChanged: (i) => onChangePage(i + 1),
              itemBuilder: (_, i) => MovieListItem(
                itemModel: movie.movies[i],
                onPressItem: onSelectMovie,
                isCurrent: (currentIndex - 1) == i,
                onExpanded: onEnabledScroll,
              ),
            ),
          ),
          if (movies.hasValue)
            Positioned.fill(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  context.l10n.quantityList(
                    currentIndex,
                    movies.value?.movies.length ?? 0,
                  ),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => ErrorMessage(message: context.l10n.errorMovieListText),
    );
  }
}
