import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/circle_image.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/core/widgets/transition_app_bar.dart';
import 'package:movie_list_bloc/features/actor_detail/repository/actor_detail_repository.dart';
import 'package:movie_list_bloc/features/actor_detail/view/widgets/actor_data_section.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class ActorDetailView extends HookConsumerWidget {
  const ActorDetailView({required this.personId, this.imageUrl, super.key});

  final int personId;
  final String? imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');

    final locale = ref.watch(languageProvider);
    final language = locale.requireValue?.languageCode;

    final actor = ref.watch(
      fetchActorProvider(personId: personId, language: language),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          TransitionAppBar(
            backgroundColor: Colors.blueGrey,
            title: actor.maybeWhen(
              data: (actor) => actor.name,
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
          actor.maybeWhen(
            loading: () => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .6,
                child: const Center(child: CircularProgressIndicator()),
              ),
            ),
            data: (actor) => SliverList(
              delegate: SliverChildListDelegate([
                ActorDataSection(actor: actor),
              ]),
            ),
            error: (_, __) => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .6,
                child: ErrorMessage(message: context.l10n.errorActorDetailText),
              ),
            ),
            orElse: () => const SliverToBoxAdapter(child: Offstage()),
          ),
        ],
      ),
    );
  }
}
