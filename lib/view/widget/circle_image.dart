import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    this.imageUrl,
    this.imageSize = 40,
    this.iconSize = 30,
  });

  final String? imageUrl;
  final double imageSize;
  final double iconSize;

  static const String imageUri = 'https://image.tmdb.org/t/p/w185';

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage:
          imageUrl != null ? NetworkImage('$imageUri$imageUrl') : null,
      radius: imageSize,
      child: imageUrl == null
          ? Icon(
              Icons.account_circle,
              size: iconSize,
              color: Colors.white,
            )
          : null,
    );
  }
}
