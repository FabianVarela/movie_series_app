part of '../actor_detail_view.dart';

class ActorDataSection extends HookWidget {
  const ActorDataSection({required this.actor, super.key});

  final ActorModel actor;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
          endInterval: .100,
          child: Padding(
            padding: const .symmetric(horizontal: 16, vertical: 15),
            child: Row(
              mainAxisAlignment: .spaceEvenly,
              children: <Widget>[
                TitleSubtitle(
                  title: l10n.actorDetailBirthDate,
                  subtitle: actor.birthday ?? l10n.noBirthDateText,
                  isRow: actor.deathDay == null,
                ),
                if (actor.deathDay != null)
                  TitleSubtitle(
                    title: l10n.actorDetailDeathDate,
                    subtitle: actor.deathDay!,
                    isRow: false,
                  ),
              ],
            ),
          ),
        ),
        SectionStaggeredAnimation(
          controller: controller,
          startInterval: .100,
          endInterval: .300,
          child: Padding(
            padding: const .symmetric(horizontal: 16, vertical: 10),
            child: TitleSubtitle(
              title: l10n.actorDetailBirthPlace,
              subtitle: actor.placeBirth ?? l10n.noBirthPlace,
              isRow: false,
            ),
          ),
        ),
        SectionStaggeredAnimation(
          controller: controller,
          startInterval: .300,
          endInterval: .500,
          child: Padding(
            padding: const .symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: <Widget>[
                TitleSubtitle(
                  title: l10n.actorDetailRol,
                  subtitle: actor.department,
                ),
                TitleSubtitle(
                  title: l10n.actorDetailPopularity,
                  subtitle: actor.popularity.toStringAsFixed(2),
                ),
              ],
            ),
          ),
        ),
        if (actor.biography.isNotEmpty)
          SectionStaggeredAnimation(
            controller: controller,
            startInterval: .500,
            endInterval: .700,
            child: Padding(
              padding: const .symmetric(horizontal: 16, vertical: 15),
              child: Text(
                actor.biography,
                style: const TextStyle(fontSize: 16, fontWeight: .normal),
              ),
            ),
          ),
        SectionStaggeredAnimation(
          controller: controller,
          startInterval: actor.biography.isEmpty ? .500 : .700,
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
