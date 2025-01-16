import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/model/common_model.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/genre_item.dart';
import 'package:movie_list_bloc/features/genre_list/repository/genre_list_repository.dart';

class GenreListSection extends ConsumerWidget {
  const GenreListSection({
    required this.genreType,
    required this.onSelect,
    this.id,
    super.key,
  });

  final GenreType genreType;
  final ValueSetter<GenreModel> onSelect;
  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = Theme.of(context).colorScheme;

    final locale = ref.watch(languageProvider);
    final language = locale.requireValue?.languageCode;

    final genres = ref.watch(
      fetchGenresProvider(type: genreType, language: language),
    );

    return genres.maybeWhen(
      data: (genre) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 40,
          child: ListView.separated(
            itemCount: genre.genres.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => const Gap(10),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (_, index) {
              final item = genre.genres[index];
              return GenreItem(
                name: item.name,
                onSelect: () => onSelect(item),
                circleColor: item.id == id
                    ? (background: color.primary, foreground: color.onPrimary)
                    : null,
                textColor: item.id == id ? color.primary : null,
              );
            },
          ),
        ),
      ),
      orElse: Offstage.new,
    );
  }
}
