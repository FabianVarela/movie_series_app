import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieDetailImage extends StatelessWidget {
  const MovieDetailImage({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.onDrag,
  });

  final int id;
  final String imageUrl;
  final VoidCallback onDrag;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.delta.dy > 0) onDrag();
      },
      child: Hero(
        tag: 'Image_$id',
        child: CachedNetworkImage(
          imageUrl: '$imdbImageUri$imageUrl',
          fit: BoxFit.cover,
          height: 250,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
