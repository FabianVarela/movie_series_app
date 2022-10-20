import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/trailers/trailer_model.dart';

class TrailerItem extends StatelessWidget {
  const TrailerItem({super.key, required this.trailer});

  final TrailerModel trailer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(5),
            height: 72,
            color: Colors.grey,
            child: const Center(child: Icon(Icons.play_circle_filled)),
          ),
          Text(
            trailer.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
