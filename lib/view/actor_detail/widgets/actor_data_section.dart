import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';
import 'package:movie_list_bloc/view/actor_detail/widgets/actor_credits_section.dart';
import 'package:movie_list_bloc/view/widget/section_staggered_animation.dart';
import 'package:movie_list_bloc/view/widget/title_subtitle.dart';

class ActorDataSection extends HookWidget {
  const ActorDataSection({
    super.key,
    required this.actor,
    required this.credits,
  });

  final ActorModel actor;
  final ActorCreditsModel credits;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );

    useEffect(
      () {
        Future.delayed(const Duration(milliseconds: 500), controller.forward);
        return null;
      },
      const [],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SectionStaggeredAnimation(
          controller: controller,
          endInterval: .100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        SectionStaggeredAnimation(
          controller: controller,
          startInterval: .500,
          endInterval: .700,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Text(
              actor.biography,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        SectionStaggeredAnimation(
          controller: controller,
          startInterval: .700,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: ActorCreditsSection(credits: credits),
          ),
        ),
      ],
    );
  }
}
