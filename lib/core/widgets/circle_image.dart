import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    this.imageUrl,
    this.imageSize = 40,
    this.iconSize = 30,
    super.key,
  });

  final String? imageUrl;
  final double imageSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final imageWidget = imageUrl != null ? NetworkImage(imageUrl!) : null;
    if (imageWidget != null) precacheImage(imageWidget, context);

    return CircleAvatar(
      backgroundImage: imageWidget,
      radius: imageSize,
      child: imageUrl == null
          ? Icon(Icons.account_circle, size: iconSize, color: Colors.white)
          : null,
    );
  }
}
