import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/core/widgets/detail_body.dart';
import 'package:movie_series_app/core/widgets/detail_credit_list.dart';
import 'package:movie_series_app/core/widgets/detail_trailer_list.dart';
import 'package:movie_series_app/core/widgets/error_message.dart';
import 'package:movie_series_app/core/widgets/header_detail_image.dart';
import 'package:movie_series_app/features/series_detail/repository/series_detail_repository.dart';
import 'package:movie_series_app/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class SeriesDetailView extends HookConsumerWidget {
  const SeriesDetailView({
    required this.seriesId,
    this.seriesImageUrl,
    super.key,
  });

  final int seriesId;
  final String? seriesImageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(
      languageProvider.select((value) => value.requireValue?.languageCode),
    );

    final series = ref.watch(
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
            series.when(
              data: (series) {
                return Column(
                  children: <Widget>[
                    DetailBody.series(series: series),
                    DetailCreditList(
                      casts: series.credits,
                      onSelect: (id, path) {
                        _goToActorDetail(context, id, path);
                      },
                    ),
                    DetailTrailerList(
                      trailers: series.trailers,
                      onSelect: (value) async => _redirectToYoutube(value),
                    ),
                  ],
                );
              },
              loading: () {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * .7,
                  child: const Center(child: CircularProgressIndicator()),
                );
              },
              error: (_, _) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * .68,
                  child: ErrorMessage(
                    message: context.l10n.errorSeriesDetailText,
                    fontSize: 15,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _goToActorDetail(BuildContext context, int id, String? path) {
    context.go(
      AppRoutePath.series.detail.define('$seriesId').actor.define('$id').path,
      extra: {'posterPath': seriesImageUrl, 'actorImage': path},
    );
  }

  Future<void> _redirectToYoutube(String id) async {
    final uri = Uri.parse('https://www.youtube.com/watch?v=$id');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
