import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/widgets/animation/section_staggered_animation.dart';
import 'package:movie_series_app/core/widgets/app_bar/transition_app_bar.dart';
import 'package:movie_series_app/core/widgets/image/circle_image.dart';
import 'package:movie_series_app/core/widgets/text/error_message.dart';
import 'package:movie_series_app/core/widgets/text/title_subtitle.dart';
import 'package:movie_series_app/features/actor_detail/model/actor_model.dart';
import 'package:movie_series_app/features/actor_detail/repository/actor_detail_repository.dart';
import 'package:movie_series_app/l10n/l10n.dart';

part 'widgets/actor_cast_item.dart';
part 'widgets/actor_credits_section.dart';
part 'widgets/actor_data_section.dart';

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
          actor.when(
            data: (actor) => SliverList(
              delegate: SliverChildListDelegate([
                ActorDataSection(actor: actor),
              ]),
            ),
            loading: () => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .6,
                child: const Center(child: CircularProgressIndicator()),
              ),
            ),
            error: (_, _) => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .6,
                child: ErrorMessage(
                  message: context.l10n.errorActorDetailText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
