import 'package:flutter/material.dart';
import 'package:movie_series_app/core/widgets/circle_image.dart';
import 'package:movie_series_app/features/actor_detail/model/actor_model.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class ActorCastItem extends StatelessWidget {
  const ActorCastItem({required this.actorCredit, super.key});

  final ActorCreditModel actorCredit;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
      leading: CircleImage(
        imageUrl:
            actorCredit.posterPath != null
                ? '$imdbImageUri${actorCredit.posterPath}'
                : null,
        imageSize: 25,
        iconSize: 25,
      ),
      title: Text(
        (actorCredit.character ?? '').isNotEmpty
            ? actorCredit.character!
            : context.l10n.noCharacterText,
        style: const TextStyle(fontSize: 17),
      ),
      subtitle: Text(actorCredit.title, style: const TextStyle(fontSize: 15)),
    );
  }
}
