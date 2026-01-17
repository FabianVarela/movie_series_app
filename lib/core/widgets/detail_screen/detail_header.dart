import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    required this.id,
    required this.onDrag,
    this.imageUrl,
    super.key,
  });

  final int id;
  final VoidCallback onDrag;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');

    final imageWidget = Image(
      image: CachedNetworkImageProvider('$imdbImageUri$imageUrl'),
      fit: .cover,
      width: MediaQuery.sizeOf(context).width,
      errorBuilder: (_, _, _) => Image.asset(
        'assets/images/poster_not_available.jpg',
        fit: .cover,
      ),
    );

    unawaited(precacheImage(imageWidget.image, context));

    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.delta.dy > 0) onDrag();
      },
      child: Hero(tag: 'Image_$id', child: imageWidget),
    );
  }
}

class DetailHeaderInfo extends StatelessWidget {
  const DetailHeaderInfo({
    required this.mainInfo,
    required this.timeInfo,
    super.key,
  });

  final ({String title, double voteAverage}) mainInfo;
  final ({String? releaseYear, int? duration}) timeInfo;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Align(
      alignment: .bottomLeft,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: .topCenter,
            end: .bottomCenter,
            colors: <Color>[
              Colors.transparent,
              colorScheme.surface.withValues(alpha: .8),
              colorScheme.surface,
            ],
          ),
        ),
        child: Padding(
          padding: const .all(16),
          child: Column(
            spacing: 4,
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: <Widget>[
              Row(
                spacing: 4,
                children: <Widget>[
                  Icon(Icons.star, size: 18, color: colorScheme.error),
                  Text(
                    '${mainInfo.voteAverage.toStringAsFixed(1)}/10',
                    style: const TextStyle(fontWeight: .w600),
                  ),
                ],
              ),
              Text(
                mainInfo.title,
                maxLines: 2,
                overflow: .ellipsis,
                style: const TextStyle(fontSize: 24, fontWeight: .bold),
              ),
              Text(
                [
                  if (timeInfo.releaseYear != null) timeInfo.releaseYear,
                  if (timeInfo.duration != null) _formatDuration,
                ].join(' • '),
                style: TextStyle(
                  color: colorScheme.onSurface.withValues(alpha: .7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String get _formatDuration {
    final hours = timeInfo.duration! ~/ 60;
    final mins = timeInfo.duration! % 60;

    if (hours > 0 && mins > 0) return '${hours}h ${mins}m';
    if (hours > 0) return '${hours}h';
    return '${mins}m';
  }
}
