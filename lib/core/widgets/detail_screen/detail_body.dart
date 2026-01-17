import 'package:flutter/material.dart';
import 'package:movie_series_app/core/widgets/text/genre_item.dart';
import 'package:movie_series_app/features/movie_detail/model/movie_model.dart';
import 'package:movie_series_app/features/series_detail/model/series_model.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class DetailBody extends StatelessWidget {
  const DetailBody.movie({
    required MovieModel this.movie,
    this.onGoWebSite,
    super.key,
  }) : series = null;

  const DetailBody.series({required SeriesModel this.series, super.key})
    : movie = null,
      onGoWebSite = null;

  final MovieModel? movie;
  final SeriesModel? series;
  final ValueSetter<String>? onGoWebSite;

  @override
  Widget build(BuildContext context) {
    if (movie == null && series == null) return const Offstage();
    final colorScheme = Theme.of(context).colorScheme;

    final voteAverage = movie?.voteAverage ?? series?.voteAverage ?? 0;
    final mainDate = movie?.releaseDate ?? series?.firstAirDate;
    final genres = movie?.genres ?? series?.genres ?? [];

    return Column(
      spacing: 10,
      crossAxisAlignment: .start,
      children: <Widget>[
        Text(
          movie?.originalTitle ?? series?.originalName ?? '',
          style: const TextStyle(fontSize: 25, fontWeight: .w700),
        ),
        Row(
          crossAxisAlignment: .start,
          mainAxisAlignment: .spaceAround,
          children: <Widget>[
            Row(
              spacing: 10,
              children: <Widget>[
                Icon(Icons.favorite, color: colorScheme.error),
                Text(
                  voteAverage.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 18, fontWeight: .w500),
                ),
              ],
            ),
            Text(
              mainDate ?? context.l10n.noDateAvailableText,
              style: const TextStyle(fontSize: 18, fontWeight: .w400),
            ),
            if (series != null && !(series?.inProduction ?? false))
              Text(
                series?.lastAirDate ?? context.l10n.noDateAvailableText,
                style: const TextStyle(fontSize: 18, fontWeight: .w400),
              ),
          ],
        ),
        if ((movie?.homepage ?? '').isNotEmpty)
          SizedBox(
            width: .infinity,
            child: ElevatedButton.icon(
              onPressed: () => onGoWebSite?.call(movie!.homepage!),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.white,
                backgroundColor: colorScheme.error,
                padding: const .symmetric(vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: .circular(12)),
              ),
              icon: const Icon(Icons.language),
              label: Text(
                context.l10n.webPageTitle.trim(),
                style: const TextStyle(fontSize: 16, fontWeight: .w600),
              ),
            ),
          ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            itemCount: genres.length,
            scrollDirection: .horizontal,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (_, index) => GenreItem(
              name: genres[index].name,
              showAvatar: false,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const .symmetric(vertical: 8),
              child: Align(
                alignment: .centerLeft,
                child: Text(
                  context.l10n.synopsisTitle,
                  style: const TextStyle(fontSize: 20, fontWeight: .w700),
                ),
              ),
            ),
            Text(
              movie?.overview ?? series?.overview ?? '',
              style: const TextStyle(fontSize: 16, fontWeight: .w400),
            ),
          ],
        ),
      ],
    );
  }
}
