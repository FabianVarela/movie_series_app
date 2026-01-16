import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_series_app/core/widgets/genre_item.dart';
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

    final voteAverage = movie?.voteAverage ?? series?.voteAverage ?? 0;
    final mainDate = movie?.releaseDate ?? series?.firstAirDate;
    final genres = movie?.genres ?? series?.genres ?? [];

    return Column(
      spacing: 10,
      children: <Widget>[
        Align(
          alignment: .centerLeft,
          child: Text(
            movie?.originalTitle ?? series?.originalName ?? '',
            style: const TextStyle(fontSize: 25, fontWeight: .w700),
          ),
        ),
        Row(
          crossAxisAlignment: .start,
          mainAxisAlignment: .spaceAround,
          children: <Widget>[
            Row(
              spacing: 10,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Theme.of(context).colorScheme.error,
                ),
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
            if (series != null)
              Text(
                (series!.lastAirDate ?? '').isNotEmpty
                    ? series!.lastAirDate!
                    : context.l10n.noDateAvailableText,
                style: const TextStyle(fontSize: 18, fontWeight: .w400),
              ),
          ],
        ),
        if (movie != null && movie?.homepage != null)
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(text: context.l10n.webPageTitle),
                TextSpan(
                  text: movie!.homepage,
                  style: const TextStyle(decoration: .underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => onGoWebSite?.call(movie!.homepage!),
                ),
              ],
            ),
          ),
        Text(
          movie?.overview ?? series?.overview ?? '',
          style: const TextStyle(fontSize: 16, fontWeight: .w400),
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            scrollDirection: .horizontal,
            itemCount: genres.length,
            padding: const .all(10),
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (_, index) => GenreItem(name: genres[index].name),
          ),
        ),
      ],
    );
  }
}
