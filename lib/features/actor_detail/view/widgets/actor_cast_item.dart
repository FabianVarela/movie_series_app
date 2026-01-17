part of '../actor_detail_view.dart';

class ActorCastItem extends StatelessWidget {
  const ActorCastItem({required this.actorCredit, super.key});

  final ActorCreditModel actorCredit;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');
    final colorScheme = Theme.of(context).colorScheme;

    final character = (actorCredit.character ?? '').isNotEmpty
        ? actorCredit.character!
        : context.l10n.noCharacterText;

    final year = actorCredit.releaseDate.isNotEmpty
        ? actorCredit.releaseDate.split('-').first
        : '';

    return ListTile(
      contentPadding: const .symmetric(vertical: 4),
      leading: MediaImage(
        imageUrl: actorCredit.posterPath != null
            ? '$imdbImageUri${actorCredit.posterPath}'
            : null,
        size: (image: 25, icon: 25),
        isCircular: false,
      ),
      title: Text(
        actorCredit.title,
        maxLines: 1,
        overflow: .ellipsis,
        style: const TextStyle(fontWeight: .w600),
      ),
      subtitle: Text(
        context.l10n.actorDetailAs(character),
        maxLines: 1,
        overflow: .ellipsis,
        style: TextStyle(
          fontSize: 12,
          color: colorScheme.onSurface.withValues(alpha: .7),
        ),
      ),
      trailing: Offstage(
        offstage: year.isEmpty,
        child: Padding(
          padding: const .only(left: 8),
          child: Text(
            year,
            style: TextStyle(
              fontSize: 14,
              color: colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ),
      ),
    );
  }
}
