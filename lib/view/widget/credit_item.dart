import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/credits/credits_model.dart';
import 'package:movie_list_bloc/view/widget/circle_image.dart';

class CreditItem extends StatelessWidget {
  const CreditItem({super.key, required this.imageUri, required this.cast});

  final String imageUri;
  final CastModel cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: '${cast.id}',
            child: CircleImage(imageUrl: cast.profilePath),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              cast.name,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
