import 'package:flutter/material.dart';
import 'package:movie_list_bloc/features/movie_detail/model/trailer_model.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class MovieDetailTrailers extends StatelessWidget {
  const MovieDetailTrailers({super.key, required this.trailers});

  final List<TrailerModel> trailers;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            context.l10n.trailerTitle,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        if (trailers.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Center(
              child: Text(
                context.l10n.noTrailerAvailableText,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        else
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: trailers.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, index) => Container(
                width: 150,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: 72,
                      color: Colors.grey,
                      child: const Center(
                        child: Icon(Icons.play_circle_filled),
                      ),
                    ),
                    Text(
                      trailers[index].name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
