import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/actor/actor_bloc.dart';
import 'package:movie_list_bloc/bloc/actor/actor_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:movie_list_bloc/view/actor_detail/widgets/actor_data_section.dart';
import 'package:movie_list_bloc/view/widget/circle_image.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
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
        const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');
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
                    ActorDataSection(actor: actor, credits: credits),
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
