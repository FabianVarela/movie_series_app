import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';

class HeaderDetailImage extends StatelessWidget {
  const HeaderDetailImage({
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
      fit: BoxFit.cover,
      height: 250,
      width: MediaQuery.sizeOf(context).width,
      errorBuilder: (_, _, _) {
        return Image.asset(
          'assets/images/poster_not_available.jpg',
          fit: BoxFit.cover,
        );
      },
    );

    precacheImage(imageWidget.image, context);

    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.delta.dy > 0) onDrag();
      },
      child: Hero(tag: 'Image_$id', child: imageWidget),
    );
  }
}
