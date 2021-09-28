import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/actor/actor_bloc.dart';
import 'package:movie_list_bloc/bloc/actor/actor_state.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/models/actor_model.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
import 'package:movie_list_bloc/view/widget/title_subtitle.dart';
import 'package:movie_list_bloc/view/widget/transition_app_bar.dart';

class ActorDetailView extends HookWidget {
  const ActorDetailView({
    Key? key,
    required this.personId,
    this.actorImageUrl,
  }) : super(key: key);

  final int personId;
  final String? actorImageUrl;

  @override
  Widget build(BuildContext context) {
    const imageUri = 'https://image.tmdb.org/t/p/w185';

    useEffect(() {
      Future.microtask(() {
        locator<ActorBloc>().getActorData(personId);
      });
    }, []);

    return BlocBuilder<ActorBloc, ActorState>(builder: (_, state) {
      var title = '';
      Widget sliverChild = const SliverToBoxAdapter(child: Offstage());

      if (state is ActorStateLoading) {
        title = 'Loading';
        sliverChild = SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .6,
            child: const Center(child: CircularProgressIndicator()),
          ),
        );
      } else if (state is ActorStateSuccess) {
        title = state.actor.name;
        sliverChild = SliverList(
          delegate: SliverChildListDelegate([_ActorData(actor: state.actor)]),
        );
      } else if (state is ActorStateError) {
        title = 'Error';
        sliverChild = SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .6,
            child: ErrorMessage(message: state.message),
          ),
        );
      }

      return Scaffold(
        body: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                TransitionAppBar(
                  title: title,
                  child: Hero(
                    tag: '$personId',
                    child: CircleAvatar(
                      backgroundImage: actorImageUrl != null
                          ? NetworkImage('$imageUri$actorImageUrl')
                          : null,
                      radius: 40,
                      child: actorImageUrl == null
                          ? const Icon(
                              Icons.account_circle,
                              size: 50,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                ),
                sliverChild,
              ],
            ),
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class _ActorData extends StatelessWidget {
  const _ActorData({Key? key, required this.actor}) : super(key: key);

  final ActorModel actor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: TitleSubtitle(
            title: 'Birth place: ',
            subtitle: actor.placeBirth ?? 'No birth place',
            isRow: false,
          ),
        ),
        Padding(
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Text(
            actor.biography,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
