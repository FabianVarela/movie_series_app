import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/common/utils.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_body.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_credit_list.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_header.dart';
import 'package:movie_series_app/core/widgets/detail_screen/detail_trailer_list.dart';
import 'package:movie_series_app/core/widgets/text/error_message.dart';
import 'package:movie_series_app/features/series_detail/repository/series_detail_repository.dart';
import 'package:movie_series_app/l10n/l10n.dart';

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 400,
            collapsedHeight: 100,
            leading: const Offstage(),
            flexibleSpace: DetailHeader(
              id: seriesId,
              imageUrl: seriesImageUrl,
              onDrag: () => Navigator.pop(context),
            ),
          ),
          series.when(
            data: (series) => SliverPadding(
              padding: const .all(16),
              sliver: SliverToBoxAdapter(
                child: Column(
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
                      onSelect: Utils.redirectToYoutube,
                    ),
                  ],
                ),
              ),
            ),
            loading: () => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .35,
                child: const Center(child: CircularProgressIndicator()),
              ),
            ),
            error: (_, _) => SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .35,
                child: ErrorMessage(
                  message: context.l10n.errorSeriesDetailText,
                  fontSize: 20,
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
      AppRoutePath.series.detail.define('$seriesId').actor.define('$id').path,
      extra: {'posterPath': seriesImageUrl, 'actorImage': path},
    );
  }
}
