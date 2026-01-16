part of '../actor_detail_view.dart';

typedef Credits = ({
  List<ActorCreditModel> movies,
  List<ActorCreditModel> series,
});

class ActorCreditsSection extends HookWidget {
  const ActorCreditsSection({required this.credits, super.key});

  final Credits credits;

  @override
  Widget build(BuildContext context) {
    const sizeDefault = 20;

    final l10n = context.l10n;
    final totalSize = credits.movies.length;

    final isExpanded = useState(false);

    final lenExpanded = useState(sizeDefault);
    final countExpanded = useState(1);

    final totalCount = totalSize / sizeDefault;
    final hasMore = !isExpanded.value && totalSize >= (lenExpanded.value + 1);

    return Column(
      spacing: 10,
      crossAxisAlignment: .start,
      children: <Widget>[
        Text(
          l10n.actorDetailCharacters(totalSize),
          style: const TextStyle(fontSize: 16, fontWeight: .w600),
        ),
        ListView.separated(
          itemCount: hasMore ? (lenExpanded.value + 1) : totalSize,
          shrinkWrap: true,
          padding: .zero,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, _) => const Divider(height: 5),
          itemBuilder: (_, index) {
            return (index == lenExpanded.value && !isExpanded.value)
                ? ListTile(
                    onTap: () {
                      countExpanded.value++;
                      lenExpanded.value = sizeDefault * countExpanded.value;

                      if (countExpanded.value >= totalCount) {
                        isExpanded.value = true;
                      }
                    },
                    leading: const Icon(Icons.keyboard_arrow_down),
                    title: Text(
                      l10n.actorDetailLoadMore(totalSize - lenExpanded.value),
                    ),
                  )
                : ActorCastItem(actorCredit: credits.movies[index]);
          },
        ),
      ],
    );
  }
}
