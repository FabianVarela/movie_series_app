import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_list_bloc/bloc/movie_bloc.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/ui/movie_detail.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  String _imageUri;
  int _currentIndex = 0;
  int _totalLength = 0;

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
                fontSize: 20,
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
              moviesSnapshot.error ?? 'Prueba',
              style: TextStyle(
                fontSize: 30,
                color: Colors.redAccent,
              ),
            ),
          );
        }

        if (moviesSnapshot.hasData) {
          _totalLength = moviesSnapshot.data.movies.length;
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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.center,
      child: CarouselSlider(
        options: CarouselOptions(
          height: height * 0.5,
          reverse: false,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          scrollPhysics: BouncingScrollPhysics(),
          onPageChanged: (int index, _) {
            setState(() => _currentIndex = index);
          },
        ),
        items: movies.map((MoviesItemModel item) {
          return Container(
            width: width * 0.7,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkResponse(
                enableFeedback: true,
                child: Hero(
                  tag: 'Image_${item.id}',
                  child: Image.network(
                    '$_imageUri${item.posterPath}',
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () => _openDetailPage(item),
              ),
            ),
          );
        }).toList(),
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
      MaterialPageRoute<dynamic>(builder: (_) {
        return MovieDetail(
          movieId: model.id,
          movieImageUrl: '$_imageUri${model.posterPath}',
        );
      }),
    );
  }
}
