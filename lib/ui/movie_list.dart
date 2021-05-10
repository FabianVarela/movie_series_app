import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_state.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/ui/movie_detail.dart';
import 'package:movie_list_bloc/ui/movie_list_item.dart';

class MovieList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    final length = useState(0);

    final isEnabledScroll = useState(true);

    final pageController =
        usePageController(initialPage: 0, viewportFraction: .8);

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
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
        Future.microtask(() => onChange(-1, 0));
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      }

      if (state is MovieListErrorState) {
        Future.microtask(() => onChange(-1, 0));
        return Center(
          child: Text(
            state.message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.redAccent,
            ),
          ),
        );
      }

      if (state is MovieListSuccessState) {
        final movies = state.movies.movies;
        Future.microtask(() => onChange(idx == -1 ? 0 : idx, movies.length));

        return Align(
          alignment: Alignment.center,
          child: PageView.builder(
            itemCount: movies.length,
            physics: enabled
                ? BouncingScrollPhysics()
                : NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: controller,
            onPageChanged: (i) => onChange(i, movies.length),
            itemBuilder: (_, i) => MovieListItem(
              itemModel: movies[i],
              onPressItem: (model) => _openDetailPage(context, model),
              imageUri: env['IMAGE_URI']!,
              isCurrent: idx == i,
              onExpanded: onEnabled,
            ),
          ),
        );
      }

      return Offstage();
    });
  }

  Widget _footer(int index, int length) {
    return Positioned.fill(
      bottom: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            '${index + 1} / $length',
            style: TextStyle(
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
    Navigator.push(
      ctx,
      PageRouteBuilder<dynamic>(
        pageBuilder: (_, __, ___) => MovieDetail(
          movieId: model.id,
          movieImageUrl: '${env['IMAGE_URI']!}${model.posterPath}',
        ),
        transitionsBuilder:
            (_, Animation<double> animation, __, Widget child) =>
                Transform.scale(scale: animation.value, child: child),
      ),
    );
  }
}
