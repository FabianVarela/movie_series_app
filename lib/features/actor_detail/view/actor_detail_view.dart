import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/widgets/animation/section_staggered_animation.dart';
import 'package:movie_series_app/core/widgets/app_bar/transition_app_bar.dart';
import 'package:movie_series_app/core/widgets/image/media_image.dart';
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
            titleBuilder: (progress) => actor.maybeWhen(
              data: (actor) => _ActorTitle(
                name: actor.name,
                department: actor.department,
                progress: progress,
              ),
              orElse: () => const SizedBox.shrink(),
            ),
            child: Hero(
              tag: '$personId',
              child: MediaImage(
                imageUrl: '$imdbImageUri$imageUrl',
                size: (image: 40, icon: 50),
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

class _ActorTitle extends StatelessWidget {
  const _ActorTitle({
    required this.name,
    required this.department,
    required this.progress,
  });

  final String name;
  final String department;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isCollapsed = progress > 0.3;

    return Text.rich(
      TextSpan(
        text: name,
        children: <InlineSpan>[
          TextSpan(text: isCollapsed ? ' • ' : '\n'),
          TextSpan(
            text: department,
            style: TextStyle(
              fontWeight: .normal,
              fontSize: isCollapsed ? 24 : 14,
              color: colorScheme.onSecondaryContainer.withValues(alpha: .7),
            ),
          ),
        ],
        style: TextStyle(
          fontSize: 24,
          fontWeight: .bold,
          color: colorScheme.onSecondaryContainer,
        ),
      ),
      textAlign: .center,
      overflow: .ellipsis,
      maxLines: isCollapsed ? 1 : 2,
    );
  }
}
