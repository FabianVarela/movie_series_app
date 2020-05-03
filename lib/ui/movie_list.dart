import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_list_bloc/bloc/movie_bloc.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/ui/movie_detail.dart';
import 'package:movie_list_bloc/ui/movie_list_item.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: .8,
  );

  String _imageUri;

  int _currentIndex = 0;
  int _totalLength = 0;

  bool _enableScroll = true;

  @override
  void initState() {
    super.initState();

    _getImageUri();
    bloc.fetchAllMovies();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: <Widget>[
          _setBody(),
          _setHeader(),
          _setFooter(),
        ],
      ),
    );
  }

  Widget _setHeader() {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Text(
              'Popular Movies',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.my_location,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _setBody() {
    return StreamBuilder<MoviesModel>(
      stream: bloc.movies,
      builder: (_, AsyncSnapshot<MoviesModel> moviesSnapshot) {
        if (moviesSnapshot.hasError) {
          return Center(
            child: Text(
              moviesSnapshot.error ?? '',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.redAccent,
              ),
            ),
          );
        }

        if (moviesSnapshot.hasData) {
          Future<void>.delayed(Duration(milliseconds: 200),
              () => _totalLength = moviesSnapshot.data.movies.length);
          return _buildList(moviesSnapshot.data.movies);
        }

        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      },
    );
  }

  Widget _buildList(List<MoviesItemModel> movies) {
    return Align(
      alignment: Alignment.center,
      child: PageView.builder(
        itemCount: movies.length,
        physics: _enableScroll
            ? BouncingScrollPhysics()
            : NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        onPageChanged: (int index) => setState(() => _currentIndex = index),
        itemBuilder: (_, int index) {
          return MovieListItem(
            itemModel: movies[index],
            onPressItem: _openDetailPage,
            imageUri: _imageUri,
            isCurrent: _currentIndex == index,
            onExpanded: (bool isExpanded) =>
                setState(() => _enableScroll = !isExpanded),
          );
        },
      ),
    );
  }

  Widget _setFooter() {
    return Positioned.fill(
      bottom: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            '${_currentIndex + 1} / $_totalLength',
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

  void _getImageUri() => _imageUri = DotEnv().env['IMAGE_URI'];

  void _openDetailPage(MoviesItemModel model) {
    Navigator.push(
      context,
      PageRouteBuilder<dynamic>(
        pageBuilder: (_, __, ___) => MovieDetail(
          movieId: model.id,
          movieImageUrl: '$_imageUri${model.posterPath}',
        ),
        transitionsBuilder:
            (_, Animation<double> animation, __, Widget child) =>
                Transform.scale(scale: animation.value, child: child),
      ),
    );
  }
}
