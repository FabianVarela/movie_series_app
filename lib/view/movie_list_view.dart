import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/view/movie_detail_view.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
import 'package:movie_list_bloc/view/widget/movie_list_item.dart';

class MovieList extends HookWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    final length = useState(0);

    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    useEffect(() {
      Future.microtask(() => locator<MoviesBloc>().fetchMovies());
    }, []);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: <Widget>[
          _body(
            currentIndex.value,
            isEnabledScroll.value,
            pageController,
            (index, size) {
              currentIndex.value = index;
              length.value = size;
            },
            (enabled) => isEnabledScroll.value = !enabled,
          ),
          _header(),
          _footer(currentIndex.value, length.value),
        ],
      ),
    );
  }

  Widget _header() {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Icon(Icons.search, color: Colors.white),
            Text(
              'Popular Movies',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Icon(Icons.my_location, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _body(int idx, bool enabled, PageController controller,
      Function(int, int) onChange, Function(bool) onEnabled) {
    return BlocBuilder<MoviesBloc, MovieListState>(builder: (context, state) {
      if (state is MovieListLoadingState) {
        Future<void>.microtask(() => onChange(-1, 0));
        return const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      }

      if (state is MovieListErrorState) {
        Future<void>.microtask(() => onChange(-1, 0));
        return ErrorMessage(message: state.message);
      }

      if (state is MovieListSuccessState) {
        final movies = state.movies.movies;
        Future<void>.microtask(
          () => onChange(idx == -1 ? 0 : idx, movies.length),
        );

        return Align(
          child: PageView.builder(
            itemCount: movies.length,
            physics: enabled
                ? const BouncingScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            controller: controller,
            onPageChanged: (i) => onChange(i, movies.length),
            itemBuilder: (_, i) => MovieListItem(
              itemModel: movies[i],
              onPressItem: (model) => _openDetailPage(context, model),
              imageUri: dotenv.env['IMAGE_URI']!,
              isCurrent: idx == i,
              onExpanded: onEnabled,
            ),
          ),
        );
      }

      return const Offstage();
    });
  }

  Widget _footer(int index, int length) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            '${index + 1} / $length',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void _openDetailPage(BuildContext ctx, MoviesItemModel model) {
    Navigator.push<void>(
      ctx,
      PageRouteBuilder<dynamic>(
        pageBuilder: (_, __, ___) => MovieDetail(
          movieId: model.id,
          movieImageUrl: '${dotenv.env['IMAGE_URI']!}${model.posterPath}',
        ),
        transitionsBuilder:
            (_, Animation<double> animation, __, Widget child) =>
                Transform.scale(scale: animation.value, child: child),
      ),
    );
  }
}
