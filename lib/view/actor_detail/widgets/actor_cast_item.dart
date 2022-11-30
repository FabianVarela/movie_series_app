import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';
import 'package:movie_list_bloc/view/widget/circle_image.dart';

class ActorCastItem extends StatelessWidget {
  const ActorCastItem({super.key, required this.actorCredit});

  final ActorCreditModel actorCredit;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('IMDB_IMAGE_URI');
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
      leading: CircleImage(
        imageUrl: actorCredit.posterPath != null
            ? '$imdbImageUri${actorCredit.posterPath}'
            : null,
        imageSize: 25,
        iconSize: 25,
      ),
      title: Text(
        (actorCredit.character ?? '').isNotEmpty
            ? actorCredit.character!
            : 'No character',
        style: const TextStyle(fontSize: 17),
      ),
      subtitle: Text(actorCredit.title, style: const TextStyle(fontSize: 15)),
    );
  }
}
