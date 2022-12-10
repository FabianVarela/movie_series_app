import 'package:flutter/material.dart';
import 'package:movie_list_bloc/core/widgets/circle_image.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:movie_list_bloc/models/credits/credits_model.dart';

class MovieDetailCredits extends StatelessWidget {
  const MovieDetailCredits({
    super.key,
    required this.casts,
    required this.onSelectActor,
  });

  final List<CastModel> casts;
  final void Function(int, String?) onSelectActor;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              context.l10n.castTitle,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        if (casts.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Center(
              child: Text(
                context.l10n.noCastAvailableText,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        else
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: casts.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, index) => InkWell(
                onTap: () => onSelectActor(
                  casts[index].id,
                  casts[index].profilePath,
                ),
                child: Container(
                  width: 100,
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: '${casts[index].id}',
                        child: CircleImage(
                          imageUrl: casts[index].profilePath != null
                              ? '$imdbImageUri${casts[index].profilePath}'
                              : null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          casts[index].name,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
