import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/actor_model.dart';

class ActorCastItem extends StatelessWidget {
  const ActorCastItem({
    Key? key,
    required this.imageUri,
    required this.actorCredit,
  }) : super(key: key);

  final String imageUri;
  final ActorCreditModel actorCredit;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
      leading: CircleAvatar(
        backgroundImage: actorCredit.posterPath != null
            ? NetworkImage('$imageUri${actorCredit.posterPath}')
            : null,
        radius: 25,
        child: actorCredit.posterPath == null
            ? const Icon(Icons.account_circle, size: 25, color: Colors.white)
            : null,
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
