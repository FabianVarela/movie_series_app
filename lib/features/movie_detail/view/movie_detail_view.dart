import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/features/movie_detail/repository/movie_detail_repository.dart';
import 'package:movie_list_bloc/features/movie_detail/view/widgets/movie_detail_body.dart';
import 'package:movie_list_bloc/features/movie_detail/view/widgets/movie_detail_credits.dart';
import 'package:movie_list_bloc/features/movie_detail/view/widgets/movie_detail_image.dart';
import 'package:movie_list_bloc/features/movie_detail/view/widgets/movie_detail_trailers.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailView extends HookConsumerWidget {
  const MovieDetailView({
    super.key,
    required this.movieId,
    required this.movieImageUrl,
  });

  final int movieId;
  final String movieImageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final language = locale.requireValue?.languageCode;

    final movie = ref.watch(
      fetchMovieProvider(movieId: movieId, language: language),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MovieDetailImage(
              id: movieId,
              imageUrl: movieImageUrl,
              onDrag: () => Navigator.pop(context),
            ),
            movie.when(
              data: (movie) => Column(
                children: <Widget>[
                  MovieDetailBody(movie: movie),
                  MovieDetailCredits(
                    casts: movie.credits,
                    onSelectActor: (id, path) => context.go(
                      '/detail/$movieId/actor/$id',
                      extra: {
                        'posterPath': movieImageUrl,
                        'actorImage': path,
                      },
                    ),
                  ),
                  MovieDetailTrailers(
                    trailers: movie.trailers,
                    onSelect: (value) async => _redirectToYoutube(value),
                  ),
                ],
              ),
              loading: () => SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                child: const Center(child: CircularProgressIndicator()),
              ),
              error: (_, __) => SizedBox(
                height: MediaQuery.of(context).size.height * .68,
                child: ErrorMessage(
                  message: context.l10n.errorMovieDetailText,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _redirectToYoutube(String id) async {
    final uri = Uri.parse('https://www.youtube.com/watch?v=$id');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
