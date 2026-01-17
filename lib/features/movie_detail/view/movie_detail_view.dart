import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_body.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_credit_list.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_header.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_trailer_list.dart';
import 'package:movie_series_app/core/widgets/text/error_message.dart';
import 'package:movie_series_app/features/movie_detail/repository/movie_detail_repository.dart';
import 'package:movie_series_app/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailView extends HookConsumerWidget {
  const MovieDetailView({required this.movieId, this.movieImageUrl, super.key});

  final int movieId;
  final String? movieImageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(
      languageProvider.select((value) => value.requireValue?.languageCode),
    );

    final movie = ref.watch(
      fetchMovieProvider(movieId: movieId, language: language),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 400,
            collapsedHeight: 100,
            leading: const Offstage(),
            flexibleSpace: DetailHeader(
              id: movieId,
              imageUrl: movieImageUrl,
              onDrag: () => Navigator.pop(context),
            ),
          ),
          movie.when(
            data: (movie) => SliverPadding(
              padding: const .all(16),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    DetailBody.movie(
                      movie: movie,
                      onGoWebSite: (url) async => _redirectTo(url),
                    ),
                    DetailCreditList(
                      casts: movie.credits,
                      onSelect: (id, path) {
                        _goToActorDetail(context, id, path);
                      },
                    ),
                    DetailTrailerList(
                      trailers: movie.trailers,
                      onSelect: (id) => _redirectTo(
                        'https://www.youtube.com/watch?v=$id',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            loading: () => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .7,
                child: const Center(child: CircularProgressIndicator()),
              ),
            ),
            error: (_, _) => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .68,
                child: ErrorMessage(
                  message: context.l10n.errorMovieDetailText,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _goToActorDetail(BuildContext context, int id, String? path) {
    context.go(
      AppRoutePath.movies.detail.define('$movieId').actor.define('$id').path,
      extra: {'posterPath': movieImageUrl, 'actorImage': path},
    );
  }

  Future<void> _redirectTo(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
