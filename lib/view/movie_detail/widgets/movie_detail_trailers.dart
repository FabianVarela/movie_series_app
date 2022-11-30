import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/trailers/trailer_model.dart';
import 'package:movie_list_bloc/view/widget/trailer_item.dart';

class MovieDetailTrailers extends StatelessWidget {
  const MovieDetailTrailers({super.key, required this.trailers});

  final List<TrailerModel> trailers;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Trailer',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        if (trailers.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Center(
              child: Text(
                'No trailer available',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
          )
        else
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: trailers.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, i) => TrailerItem(trailer: trailers[i]),
            ),
          ),
      ],
    );
  }
}