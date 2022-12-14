import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/animated_card_item.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/core/widgets/indicator_page.dart';
import 'package:movie_list_bloc/features/movie_list/model/movies_model.dart';
import 'package:movie_list_bloc/features/movie_list/repository/movie_list_repository.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class MovieListBody extends HookConsumerWidget {
  const MovieListBody({
    super.key,
    this.currentIndex = 0,
    this.genreId,
    required this.onChangePage,
    required this.onSelectMovie,
  });

  final int currentIndex;
  final int? genreId;
  final ValueSetter<int> onChangePage;
  final ValueSetter<MovieModel> onSelectMovie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    final locale = ref.watch(languageProvider);
    final movies = ref.watch(
      fetchMoviesProvider(
        genreId: genreId,
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
              physics: isEnabledScroll.value
                  ? const BouncingScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              onPageChanged: (index) => onChangePage(index + 1),
              itemBuilder: (_, index) {
                final item = movie.movies[index];
                return AnimatedCardItem(
                  id: item.id,
                  name: item.originalTitle,
                  voteAverage: item.voteAverage,
                  imageUrl: item.posterPath,
                  onPress: () => onSelectMovie(item),
                  isCurrent: (currentIndex - 1) == index,
                  onExpanded: (value) => isEnabledScroll.value = !value,
                );
              },
            ),
          ),
          if (movies.hasValue)
            Positioned.fill(
              child: IndicatorPage(
                start: currentIndex,
                total: movies.value?.movies.length ?? 0,
              ),
            ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => ErrorMessage(message: context.l10n.errorMovieListText),
    );
  }
}
