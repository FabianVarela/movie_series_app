import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/actor/actor_bloc.dart';
import 'package:movie_list_bloc/bloc/actor/actor_state.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:movie_list_bloc/view/actor_detail/widgets/actor_cast_item.dart';
import 'package:movie_list_bloc/view/widget/circle_image.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
import 'package:movie_list_bloc/view/widget/section_staggered_animation.dart';
import 'package:movie_list_bloc/view/widget/title_subtitle.dart';
import 'package:movie_list_bloc/view/widget/transition_app_bar.dart';

class ActorDetailPage extends StatelessWidget {
  const ActorDetailPage({super.key, required this.personId, this.imageUrl});

  final int personId;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ActorBloc(context.read<MovieRepository>()),
      child: ActorDetailView(personId: personId, imageUrl: imageUrl),
    );
  }
}

class ActorDetailView extends HookWidget {
  const ActorDetailView({super.key, required this.personId, this.imageUrl});

  final int personId;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        context.read<ActorBloc>().getActorData(personId);
        return null;
      },
      const [],
    );

    return BlocBuilder<ActorBloc, ActorState>(
      builder: (_, state) {
        const imdbImageUri = String.fromEnvironment('IMDB_IMAGE_URI');

        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              TransitionAppBar(
                backgroundColor: Colors.blueGrey,
                title: state.maybeWhen(
                  success: (actor, _) => actor.name,
                  orElse: () => '',
                ),
                child: Hero(
                  tag: '$personId',
                  child: CircleImage(
                    imageUrl: '$imdbImageUri$imageUrl',
                    iconSize: 50,
                  ),
                ),
              ),
              state.maybeWhen(
                loading: () => SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .6,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                ),
                success: (actor, credits) => SliverList(
                  delegate: SliverChildListDelegate([
                    _ActorData(actor: actor, credits: credits),
                  ]),
                ),
                error: (message) => SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .6,
                    child: ErrorMessage(message: message),
                  ),
                ),
                orElse: () => const SliverToBoxAdapter(child: Offstage()),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ActorData extends HookWidget {
  const _ActorData({required this.actor, required this.credits});

  final ActorModel actor;
  final ActorCreditsModel credits;

  @override
  Widget build(BuildContext context) {
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
                  title: 'Birth date: ',
                  subtitle: actor.birthday ?? 'No birth date',
                  isRow: actor.deathDay == null,
                ),
                if (actor.deathDay != null)
                  TitleSubtitle(
                    title: 'Death date: ',
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
              title: 'Birth place: ',
              subtitle: actor.placeBirth ?? 'No birth place',
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
                TitleSubtitle(title: 'Rol: ', subtitle: actor.department),
                TitleSubtitle(
                  title: 'Popularity: ',
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
            child: _ActorCredits(credits: credits),
          ),
        ),
      ],
    );
  }
}

class _ActorCredits extends HookWidget {
  const _ActorCredits({required this.credits});

  final ActorCreditsModel credits;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${credits.casts.length} Character(s)',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        ListView.separated(
          itemCount: (!isExpanded.value && credits.casts.length >= 21)
              ? 21
              : credits.casts.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const Divider(height: 5),
          itemBuilder: (_, i) => (i == 20 && !isExpanded.value)
              ? ListTile(
                  onTap: () => isExpanded.value = true,
                  leading: const Icon(Icons.keyboard_arrow_down),
                  title: Text('Load ${credits.casts.length - 20} more'),
                )
              : ActorCastItem(actorCredit: credits.casts[i]),
        ),
      ],
    );
  }
}
