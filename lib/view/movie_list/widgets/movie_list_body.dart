import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_item.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';

class MovieListBody extends HookWidget {
  const MovieListBody({
    super.key,
    this.index = 0,
    required this.onSelectMovie,
    this.onChangePage,
  });

  final int index;
  final ValueSetter<MovieModel> onSelectMovie;
  final void Function(int, int)? onChangePage;

  @override
  Widget build(BuildContext context) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    return BlocConsumer<MoviesBloc, MovieListState>(
      listenWhen: (current, next) => current != next,
      listener: (_, state) {
        if (state is MovieListStateSuccess) {
          state.movies.movies.isNotEmpty
              ? onChangePage?.call(index + 1, state.movies.movies.length)
              : onChangePage?.call(0, 0);
        } else {
          onChangePage?.call(0, 0);
        }
      },
      builder: (_, state) => state.when(
        initial: Offstage.new,
        loading: () => const Center(child: CircularProgressIndicator()),
        success: (data) => PageView.builder(
          controller: pageController,
          itemCount: data.movies.length,
          physics: isEnabledScroll.value
              ? const BouncingScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          onPageChanged: (i) => onChangePage?.call(i + 1, data.movies.length),
          itemBuilder: (_, i) => MovieListItem(
            itemModel: data.movies[i],
            onPressItem: onSelectMovie,
            imageUri: 'https://image.tmdb.org/t/p/w185',
            isCurrent: (index - 1) == i,
            onExpanded: (enabled) => isEnabledScroll.value = !enabled,
          ),
        ),
        error: (_) => const ErrorMessage(message: 'Error getting movie list'),
      ),
    );
  }
}
