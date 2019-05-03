import 'package:flutter/material.dart';
import 'package:movie_list_bloc/bloc/movie_detail_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_detail_bloc_provider.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieDetail extends StatefulWidget {
  final posterUrl;
  final description;
  final releaseDate;
  final String title;
  final String voteAverage;
  final int movieId;

  MovieDetail({
    this.title,
    this.posterUrl,
    this.description,
    this.releaseDate,
    this.voteAverage,
    this.movieId,
  });

  @override
  _MovieDetailState createState() => _MovieDetailState(
        title: title,
        posterUrl: posterUrl,
        description: description,
        releaseDate: releaseDate,
        voteAverage: voteAverage,
        movieId: movieId,
      );
}

class _MovieDetailState extends State<MovieDetail> {
  final posterUrl;
  final description;
  final releaseDate;
  final String title;
  final String voteAverage;
  final int movieId;

  MovieDetailBloc bloc;

  _MovieDetailState({
    this.title,
    this.posterUrl,
    this.description,
    this.releaseDate,
    this.voteAverage,
    this.movieId,
  });

  @override
  void didChangeDependencies() {
    bloc = MovieDetailBlocProvider.of(context);
    bloc.fetchTrailersById(movieId);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                floating: false,
                pinned: true,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    "https://image.tmdb.org/t/p/w500$posterUrl",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Icon(Icons.favorite, color: Colors.red),
                    SizedBox(width: 2),
                    Text(voteAverage, style: TextStyle(fontSize: 18)),
                    SizedBox(width: 20),
                    Text(releaseDate, style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(height: 16),
                Text(description),
                SizedBox(height: 16),
                Text(
                  "Trailer",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                StreamBuilder(
                  stream: bloc.movieTrailers,
                  builder:
                      (context, AsyncSnapshot<Future<TrailerModel>> snapshot) {
                    if (snapshot.hasData) {
                      return FutureBuilder(
                        future: snapshot.data,
                        builder: (context,
                            AsyncSnapshot<TrailerModel> itemSnapShot) {
                          if (itemSnapShot.hasData) {
                            if (itemSnapShot.data.results.length > 0)
                              return _trailerLayout(itemSnapShot.data);
                            else
                              return _noTrailer();
                          } else {
                            return Center(child: CircularProgressIndicator());
                          }
                        },
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _noTrailer() {
    return Center(
      child: Container(
        child: Text("No trailer available"),
      ),
    );
  }

  Widget _trailerLayout(TrailerModel data) {
    if (data.results.length > 1) {
      return Row(
        children: <Widget>[
          _trailerItem(data, 0),
          _trailerItem(data, 1),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          _trailerItem(data, 0),
        ],
      );
    }
  }

  Widget _trailerItem(TrailerModel data, int index) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            height: 100,
            color: Colors.grey,
            child: Center(
              child: Icon(Icons.play_circle_filled),
            ),
          ),
          Text(
            data.results[index].name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
