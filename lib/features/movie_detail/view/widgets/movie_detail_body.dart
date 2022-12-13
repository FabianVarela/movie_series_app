import 'package:flutter/material.dart';
import 'package:movie_list_bloc/core/widgets/genre_item.dart';
import 'package:movie_list_bloc/features/movie_detail/model/movie_model.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class MovieDetailBody extends StatelessWidget {
  const MovieDetailBody({super.key, required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              movie.originalTitle,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
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
                    movie.voteAverage.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                (movie.releaseDate ?? '').isNotEmpty
                    ? movie.releaseDate!
                    : context.l10n.noDateAvailableText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          child: Text(
            movie.overview,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.genres.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (_, i) => GenreItem(name: movie.genres[i].name),
          ),
        ),
      ],
    );
  }
}
