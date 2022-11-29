import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_item.dart';

class MovieListBody extends HookWidget {
  const MovieListBody({
    super.key,
    required this.movies,
    this.index = 0,
    this.onSelectMovie,
    this.onChangePage,
  });

  final List<MovieModel> movies;
  final int index;
  final ValueSetter<MovieModel>? onSelectMovie;
  final void Function(int, int)? onChangePage;

  @override
  Widget build(BuildContext context) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    return Center(
      child: PageView.builder(
        controller: pageController,
        itemCount: movies.length,
        physics: isEnabledScroll.value
            ? const BouncingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        onPageChanged: (i) => onChangePage?.call(i + 1, movies.length),
        itemBuilder: (_, i) => MovieListItem(
          itemModel: movies[i],
          onPressItem: (movie) => onSelectMovie?.call(movie),
          isCurrent: (index - 1) == i,
          onExpanded: (enabled) => isEnabledScroll.value = !enabled,
        ),
      ),
    );
  }
}
