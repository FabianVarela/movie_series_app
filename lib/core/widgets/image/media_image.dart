import 'dart:async';

import 'package:flutter/material.dart';

class MediaImage extends StatelessWidget {
  const MediaImage({
    required this.imageUrl,
    this.size = const (image: 40, icon: 30),
    this.isCircular = true,
    this.borderRadius = 12,
    super.key,
  });

  final String? imageUrl;
  final ({double image, double icon}) size;
  final bool isCircular;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final imageWidget = imageUrl != null ? NetworkImage(imageUrl!) : null;
    if (imageWidget != null) unawaited(precacheImage(imageWidget, context));

    if (isCircular) {
      return CircleAvatar(
        backgroundImage: imageWidget,
        radius: size.image,
        child: switch (imageUrl == null) {
          true => Icon(Icons.account_circle, size: size.icon),
          false => null,
        },
      );
    }

    return ClipRRect(
      borderRadius: .circular(borderRadius),
      child: SizedBox.square(
        dimension: size.image * 2,
        child: ColoredBox(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: imageWidget != null
              ? Image(image: imageWidget, fit: .cover)
              : Icon(Icons.account_circle, size: size.icon),
        ),
      ),
    );
  }
}
