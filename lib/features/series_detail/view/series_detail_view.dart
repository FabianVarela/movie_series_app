import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/detail_credit_list.dart';
import 'package:movie_list_bloc/core/widgets/detail_trailer_list.dart';
import 'package:movie_list_bloc/core/widgets/error_message.dart';
import 'package:movie_list_bloc/core/widgets/header_detail_image.dart';
import 'package:movie_list_bloc/features/series_detail/repository/series_detail_repository.dart';
import 'package:movie_list_bloc/features/series_detail/view/widgets/series_detail_body.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class SeriesDetailView extends HookConsumerWidget {
  const SeriesDetailView({
    super.key,
    required this.seriesId,
    required this.seriesImageUrl,
  });

  final int seriesId;
  final String seriesImageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final language = locale.requireValue?.languageCode;

    final seriesDetail = ref.watch(
      fetchSeriesProvider(tvId: seriesId, language: language),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderDetailImage(
              id: seriesId,
              imageUrl: seriesImageUrl,
              onDrag: () => Navigator.pop(context),
            ),
            seriesDetail.when(
              data: (series) => Column(
                children: <Widget>[
                  SeriesDetailBody(series: series),
                  DetailCreditList(
                    casts: series.credits,
                    onSelect: (id, path) => context.go(
                      '/detail/$seriesId/actor/$id',
                      extra: {'posterPath': seriesImageUrl, 'actorImage': path},
                    ),
                  ),
                  DetailTrailerList(
                    trailers: series.trailers,
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
                  message: context.l10n.errorSeriesDetailText,
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
