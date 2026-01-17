import 'package:flutter/material.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class DetailTrailerList extends StatelessWidget {
  const DetailTrailerList({
    required this.trailers,
    required this.onSelect,
    super.key,
  });

  final List<TrailerModel> trailers;
  final ValueSetter<String> onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: <Widget>[
        Padding(
          padding: const .symmetric(vertical: 8),
          child: Text(
            context.l10n.trailerTitle,
            style: const TextStyle(fontSize: 20, fontWeight: .w700),
          ),
        ),
        if (trailers.isEmpty)
          Padding(
            padding: const .symmetric(vertical: 20),
            child: Center(
              child: Text(
                context.l10n.noTrailerAvailableText,
                style: const TextStyle(fontSize: 18, fontWeight: .w500),
              ),
            ),
          )
        else
          SizedBox(
            height: 200,
            child: ListView.separated(
              itemCount: trailers.length,
              scrollDirection: .horizontal,
              separatorBuilder: (_, _) => const SizedBox(width: 12),
              itemBuilder: (_, index) => InkWell(
                onTap: () {
                  if (trailers[index].site == 'YouTube') {
                    onSelect(trailers[index].key);
                  }
                },
                child: _TrailerItem(trailer: trailers[index]),
              ),
            ),
          ),
      ],
    );
  }
}

class _TrailerItem extends StatelessWidget {
  const _TrailerItem({required this.trailer});

  final TrailerModel trailer;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final thumbnailUrl = trailer.site == 'YouTube'
        ? 'https://img.youtube.com/vi/${trailer.key}/mqdefault.jpg'
        : '';

    return SizedBox(
      width: 280,
      child: Column(
        spacing: 4,
        crossAxisAlignment: .start,
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: .circular(12),
              child: Stack(
                fit: .expand,
                children: <Widget>[
                  Image.network(
                    thumbnailUrl,
                    fit: .cover,
                    errorBuilder: (_, _, _) => ColoredBox(
                      color: colorScheme.surfaceContainerHighest,
                      child: const Center(
                        child: Icon(Icons.movie_outlined, size: 60),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const .all(12),
                      decoration: const BoxDecoration(
                        shape: .circle,
                        color: Colors.black45,
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            trailer.name,
            maxLines: 1,
            overflow: .ellipsis,
            style: const TextStyle(fontWeight: .w600),
          ),
          Text(
            trailer.type,
            maxLines: 1,
            overflow: .ellipsis,
            style: TextStyle(
              fontSize: 12,
              color: colorScheme.onSurface.withValues(alpha: .7),
            ),
          ),
        ],
      ),
    );
  }
}
