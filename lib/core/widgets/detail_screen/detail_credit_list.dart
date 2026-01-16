import 'package:flutter/material.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/core/widgets/image/circle_image.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class DetailCreditList extends StatelessWidget {
  const DetailCreditList({
    required this.casts,
    required this.onSelect,
    super.key,
  });

  final List<CreditsModel> casts;
  final void Function(int, String?) onSelect;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');

    return Column(
      children: <Widget>[
        Padding(
          padding: const .symmetric(vertical: 8),
          child: Align(
            alignment: .centerLeft,
            child: Text(
              context.l10n.castTitle,
              style: const TextStyle(fontSize: 25, fontWeight: .w700),
            ),
          ),
        ),
        if (casts.isEmpty)
          Padding(
            padding: const .symmetric(vertical: 5),
            child: Center(
              child: Text(
                context.l10n.noCastAvailableText,
                style: const TextStyle(fontSize: 22, fontWeight: .w500),
              ),
            ),
          )
        else
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: casts.length,
              scrollDirection: .horizontal,
              itemBuilder: (_, index) {
                final item = casts[index];
                return InkWell(
                  onTap: () => onSelect(item.id, item.profilePath),
                  child: Container(
                    width: 100,
                    padding: const .only(right: 10),
                    child: Column(
                      mainAxisAlignment: .center,
                      children: <Widget>[
                        Hero(
                          tag: '${item.id}',
                          child: CircleImage(
                            imageUrl: item.profilePath != null
                                ? '$imdbImageUri${item.profilePath}'
                                : null,
                          ),
                        ),
                        Padding(
                          padding: const .only(top: 10),
                          child: Text(
                            item.name,
                            textAlign: .center,
                            overflow: .ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: .w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
