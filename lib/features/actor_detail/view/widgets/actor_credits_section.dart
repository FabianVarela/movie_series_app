part of '../actor_detail_view.dart';

typedef Credits = ({
  List<ActorCreditModel> movies,
  List<ActorCreditModel> series,
});

enum _CreditType { movies, series }

class ActorCreditsSection extends HookWidget {
  const ActorCreditsSection({required this.credits, super.key});

  final Credits credits;

  @override
  Widget build(BuildContext context) {
    const pageSize = 10;

    final selectedType = useState(_CreditType.movies);
    final visibleCount = useState(pageSize);

    final currentCredits = selectedType.value == .movies
        ? credits.movies
        : credits.series;

    final totalCount = credits.movies.length + credits.series.length;
    final totalCurrentCredits = currentCredits.length;

    final hasMore = visibleCount.value < totalCurrentCredits;

    return Column(
      spacing: 12,
      crossAxisAlignment: .start,
      children: <Widget>[
        Row(
          mainAxisAlignment: .spaceBetween,
          children: <Widget>[
            Text(
              context.l10n.actorDetailFilmography,
              style: const TextStyle(fontSize: 18, fontWeight: .w600),
            ),
            Text(
              context.l10n.actorDetailCharacters(totalCount),
              style: const TextStyle(fontWeight: .w500),
            ),
          ],
        ),
        Padding(
          padding: const .only(bottom: 8),
          child: SizedBox(
            width: .infinity,
            child: SegmentedButton<_CreditType>(
              showSelectedIcon: false,
              style: SegmentedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: .circular(12)),
              ),
              segments: [
                ButtonSegment(
                  value: .movies,
                  label: Text(context.l10n.actorDetailMovies),
                  icon: const Icon(Icons.movie_outlined),
                ),
                ButtonSegment(
                  value: .series,
                  label: Text(context.l10n.actorDetailSeries),
                  icon: const Icon(Icons.tv_outlined),
                ),
              ],
              selected: {selectedType.value},
              onSelectionChanged: (selected) {
                selectedType.value = selected.first;
                visibleCount.value = pageSize;
              },
            ),
          ),
        ),
        Text(
          context.l10n.actorDetailRecentRoles,
          style: const TextStyle(fontSize: 16, fontWeight: .w600),
        ),
        ListView.separated(
          padding: .zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: hasMore ? (visibleCount.value + 1) : totalCurrentCredits,
          separatorBuilder: (_, _) => const Divider(height: 1),
          itemBuilder: (_, index) {
            if (index == visibleCount.value && hasMore) {
              return ListTile(
                onTap: () => visibleCount.value += pageSize,
                leading: const Icon(Icons.keyboard_arrow_down),
                title: Text(
                  context.l10n.actorDetailLoadMore(
                    totalCurrentCredits - visibleCount.value,
                  ),
                ),
              );
            }
            return ActorCastItem(actorCredit: currentCredits[index]);
          },
        ),
      ],
    );
  }
}
