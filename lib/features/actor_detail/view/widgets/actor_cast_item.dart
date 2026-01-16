part of '../actor_detail_view.dart';

class ActorCastItem extends StatelessWidget {
  const ActorCastItem({required this.actorCredit, super.key});

  final ActorCreditModel actorCredit;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');
    return ListTile(
      contentPadding: const .symmetric(horizontal: 5),
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
            : context.l10n.noCharacterText,
        style: const TextStyle(fontSize: 17),
      ),
      subtitle: Text(actorCredit.title, style: const TextStyle(fontSize: 15)),
    );
  }
}
