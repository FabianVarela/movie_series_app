part of '../actor_detail_view.dart';

class ActorDataSection extends HookWidget {
  const ActorDataSection({required this.actor, super.key});

  final ActorModel actor;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );

    useEffect(() {
      Future.delayed(const Duration(milliseconds: 500), controller.forward);
      return null;
    }, const []);

    return Column(
      crossAxisAlignment: .start,
      children: <Widget>[
        SectionStaggeredAnimation(
          controller: controller,
          endInterval: .200,
          child: Padding(
            padding: const .symmetric(horizontal: 16, vertical: 15),
            child: IntrinsicHeight(
              child: Row(
                spacing: 4,
                mainAxisAlignment: .spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: TitleSubtitle(
                      title: context.l10n.actorDetailBirthDate,
                      value: actor.birthday ?? context.l10n.noBirthDateText,
                    ),
                  ),
                  const VerticalDivider(width: 1, thickness: 1),
                  Flexible(
                    child: TitleSubtitle(
                      title: context.l10n.actorDetailBirthPlace,
                      value: actor.placeBirth ?? context.l10n.noBirthPlace,
                    ),
                  ),
                  const VerticalDivider(width: 1, thickness: 1),
                  Flexible(
                    child: TitleSubtitle(
                      title: context.l10n.actorDetailPopularity,
                      value: actor.popularity.toStringAsFixed(2),
                      icon: Icons.trending_up,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (actor.biography.isNotEmpty)
          SectionStaggeredAnimation(
            controller: controller,
            startInterval: .200,
            endInterval: .500,
            child: Padding(
              padding: const .symmetric(horizontal: 16, vertical: 15),
              child: _BiographySection(biography: actor.biography),
            ),
          ),
        SectionStaggeredAnimation(
          controller: controller,
          startInterval: actor.biography.isEmpty ? .200 : .500,
          child: Padding(
            padding: const .symmetric(horizontal: 16, vertical: 20),
            child: ActorCreditsSection(
              credits: (
                movies: actor.movieCredits,
                series: actor.seriesCredits,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BiographySection extends HookWidget {
  const _BiographySection({required this.biography});

  final String biography;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isExpanded = useState(false);

    return Column(
      spacing: 8,
      crossAxisAlignment: .start,
      children: <Widget>[
        Text(
          context.l10n.actorDetailBiography,
          style: const TextStyle(fontSize: 18, fontWeight: .w600),
        ),
        Text(
          biography,
          maxLines: isExpanded.value ? null : 5,
          overflow: isExpanded.value ? null : .ellipsis,
          style: const TextStyle(fontSize: 14, height: 1.5),
        ),
        InkWell(
          onTap: () => isExpanded.value = !isExpanded.value,
          child: Row(
            mainAxisSize: .min,
            children: <Widget>[
              Text(
                isExpanded.value
                    ? context.l10n.actorDetailReadLess
                    : context.l10n.actorDetailReadMore,
                style: TextStyle(fontWeight: .w500, color: colorScheme.primary),
              ),
              Icon(
                isExpanded.value
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 20,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
