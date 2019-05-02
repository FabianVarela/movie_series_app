import 'package:flutter/material.dart';
import 'package:movie_list_bloc/bloc/movie_bloc.dart';
import 'package:movie_list_bloc/models/item_model.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  void initState() {
    super.initState();
    bloc.fetchAllMovies();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Popular Movies'),
        ),
        body: StreamBuilder(
          stream: bloc.allMovies,
          builder: (context, AsyncSnapshot<ItemModel> snapshot) {
            if (snapshot.hasData) {
              return buildList(snapshot);
            } else if (snapshot.hasError) {
              return Text(
                snapshot.error.toString(),
                style: TextStyle(color: Colors.redAccent),
              );
            }

            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<ItemModel> snapshot) {
    return GridView.builder(
      itemCount: snapshot.data.results.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return GridTile(
          child: Image.network(
            "https://image.tmdb.org/t/p/w185${snapshot.data.results[index].posterPath}",
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
