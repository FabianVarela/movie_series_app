import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_list_bloc/bloc/movie_detail_bloc.dart';
import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/movie_model.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieDetail extends StatefulWidget {
  final int movieId;
  final String movieImageUrl;

  MovieDetail({@required this.movieId, @required this.movieImageUrl});

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  final MovieDetailBloc _bloc = MovieDetailBloc();

  String _imageUri;

  @override
  void initState() {
    super.initState();
    _getImageUri();

    _bloc.getMovie(widget.movieId);

    Future<void>.delayed(
      Duration(milliseconds: 500),
      () => _bloc.getTrailers(widget.movieId),
    );

    Future<void>.delayed(
      Duration(milliseconds: 1000),
      () => _bloc.getCredits(widget.movieId),
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onVerticalDragUpdate: (DragUpdateDetails details) {
                print('Drag delta y: ${details.delta.dy}');
                if(details.delta.dy > 0) {
                  Navigator.pop(context);
                }
              },
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: 'Image_${widget.movieId}',
                  child: Image.network(
                    '${widget.movieImageUrl}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            StreamBuilder<MovieModel>(
              stream: _bloc.movie,
              builder: (_, AsyncSnapshot<MovieModel> movieSnapshot) {
                if (!movieSnapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    //shrinkWrap: true,
                    children: <Widget>[
                      _setDetailSection(movieSnapshot.data),
                      _setCreditsSection(),
                      _setTrailerSection(),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _setDetailSection(MovieModel movie) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              movie.title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
                  Text(
                    '${movie.voteAverage}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Text(
                movie.releaseDate,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            movie.overview,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _setCreditsSection() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Cast',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        StreamBuilder<CreditsModel>(
          stream: _bloc.credits,
          builder: (_, AsyncSnapshot<CreditsModel> creditsSnapshot) {
            if (!creditsSnapshot.hasData) {
              return CircularProgressIndicator();
            }

            final List<CastModel> casts = creditsSnapshot.data.casts;
            if (casts.isEmpty) {
              return Center(
                child: Container(
                  child: Text('No cast available'),
                ),
              );
            }

            return Container(
              height: 120,
              child: ListView.builder(
                itemCount: casts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, int index) {
                  final bool isImage = casts[index].profilePath != null;

                  return Container(
                    width: 100,
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: isImage
                              ? NetworkImage(
                                  '$_imageUri${casts[index].profilePath}',
                                )
                              : null,
                          child: !isImage
                              ? Icon(
                                  Icons.account_circle,
                                  size: 30,
                                  color: Colors.white,
                                )
                              : null,
                          radius: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            '${casts[index].name}',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _setTrailerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Trailer',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        StreamBuilder<TrailersModel>(
          stream: _bloc.trailers,
          builder: (_, AsyncSnapshot<TrailersModel> trailersSnapshot) {
            if (!trailersSnapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (trailersSnapshot.data.trailers.isEmpty) {
              return Center(
                child: Container(
                  child: Text('No trailer available'),
                ),
              );
            }

            return _trailerLayout(trailersSnapshot.data.trailers);
          },
        ),
      ],
    );
  }

  Widget _trailerLayout(List<TrailerModel> trailers) {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: trailers.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) {
          return Container(
            width: 150,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  height: 72,
                  color: Colors.grey,
                  child: Center(
                    child: Icon(Icons.play_circle_filled),
                  ),
                ),
                Text(
                  trailers[index].name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _getImageUri() => _imageUri = DotEnv().env['IMAGE_URI'];
}
