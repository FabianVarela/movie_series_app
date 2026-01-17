import 'package:flutter/material.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/core/widgets/image/media_image.dart';
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
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: .start,
      children: <Widget>[
        Padding(
          padding: const .symmetric(vertical: 8),
          child: Text(
            context.l10n.castTitle,
            style: const TextStyle(fontSize: 20, fontWeight: .w700),
          ),
        ),
        if (casts.isEmpty)
          Padding(
            padding: const .symmetric(vertical: 20),
            child: Center(
              child: Text(
                context.l10n.noCastAvailableText,
                style: const TextStyle(fontSize: 18, fontWeight: .w500),
              ),
            ),
          )
        else
          SizedBox(
            height: 130,
            child: ListView.separated(
              itemCount: casts.length,
              scrollDirection: .horizontal,
              separatorBuilder: (_, _) => const SizedBox(width: 16),
              itemBuilder: (_, index) {
                final item = casts[index];
                return InkWell(
                  onTap: () => onSelect(item.id, item.profilePath),
                  child: SizedBox(
                    width: 80,
                    child: Column(
                      mainAxisAlignment: .center,
                      children: <Widget>[
                        Padding(
                          padding: const .only(bottom: 8),
                          child: Hero(
                            tag: '${item.id}',
                            child: MediaImage(
                              imageUrl: item.profilePath != null
                                  ? '$imdbImageUri${item.profilePath}'
                                  : null,
                              size: (image: 35, icon: 30),
                            ),
                          ),
                        ),
                        Text(
                          item.name,
                          maxLines: 1,
                          textAlign: .center,
                          overflow: .ellipsis,
                          style: const TextStyle(fontWeight: .w500),
                        ),
                        Text(
                          item.character,
                          maxLines: 1,
                          textAlign: .center,
                          overflow: .ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: colorScheme.onSurface.withValues(alpha: .6),
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
