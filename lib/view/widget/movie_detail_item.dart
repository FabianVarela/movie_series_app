import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/view/widget/gender_item.dart';

class MovieDetailItem extends StatelessWidget {
  const MovieDetailItem({Key? key, required this.movie}) : super(key: key);

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              movie.title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
                  Text(
                    '${movie.voteAverage}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                movie.releaseDate != null && movie.releaseDate!.isNotEmpty
                    ? movie.releaseDate!
                    : 'No date available',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            movie.overview,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: movie.genres.isEmpty
              ? const Center(
                  child: Text(
                    'No genres available',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                )
              : SizedBox(
                  height: 40,
                  child: ListView.builder(
                    itemCount: movie.genres.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) => GenderItem(gender: movie.genres[i]),
                  ),
                ),
        ),
      ],
    );
  }
}
