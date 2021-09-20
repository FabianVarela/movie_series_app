import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/credits_model.dart';

class CreditItem extends StatelessWidget {
  const CreditItem({Key? key, required this.imageUri, required this.cast})
      : super(key: key);

  final String imageUri;
  final CastModel cast;

  @override
  Widget build(BuildContext context) {
    final isImage = cast.profilePath != null;

    return Container(
      width: 100,
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage:
                isImage ? NetworkImage('$imageUri${cast.profilePath}') : null,
            radius: 40,
            child: !isImage
                ? const Icon(
                    Icons.account_circle,
                    size: 30,
                    color: Colors.white,
                  )
                : null,
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
