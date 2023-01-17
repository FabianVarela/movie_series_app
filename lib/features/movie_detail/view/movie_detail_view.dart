import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/detail_credit_list.dart';
import 'package:movie_list_bloc/core/widgets/detail_trailer_list.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/core/widgets/header_detail_image.dart';
import 'package:movie_list_bloc/features/movie_detail/repository/movie_detail_repository.dart';
import 'package:movie_list_bloc/features/movie_detail/view/widgets/movie_detail_body.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailView extends HookConsumerWidget {
  const MovieDetailView({
    super.key,
    required this.movieId,
    this.movieImageUrl,
  });

  final int movieId;
  final String? movieImageUrl;

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
            HeaderDetailImage(
              id: movieId,
              imageUrl: movieImageUrl,
              onDrag: () => Navigator.pop(context),
            ),
            movie.when(
              data: (movie) => Column(
                children: <Widget>[
                  MovieDetailBody(
                    movie: movie,
                    onGoWebSite: (url) async => _redirectTo(url),
                  ),
                  DetailCreditList(
                    casts: movie.credits,
                    onSelect: (id, path) => context.go(
                      '/movies/detail/$movieId/actor/$id',
                      extra: {'posterPath': movieImageUrl, 'actorImage': path},
                    ),
                  ),
                  DetailTrailerList(
                    trailers: movie.trailers,
                    onSelect: (id) async => _redirectTo(
                      'https://www.youtube.com/watch?v=$id',
                    ),
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

  Future<void> _redirectTo(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
