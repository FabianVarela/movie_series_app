import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/model/common_model.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/genre_item.dart';
import 'package:movie_list_bloc/features/genre_list/repository/genre_list_repository.dart';

class GenreListSection extends ConsumerWidget {
  const GenreListSection({
    super.key,
    this.id,
    required this.genreType,
    required this.onSelect,
  });

  final int? id;
  final GenreType genreType;
  final ValueSetter<GenreModel> onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final language = locale.requireValue?.languageCode;

    final genres = ref.watch(
      fetchGenresProvider(type: genreType, language: language),
    );

    return genres.maybeWhen(
      data: (genre) {
        final list = genre.genres;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, i) => GenreItem(
                name: list[i].name,
                onSelect: () => onSelect(list[i]),
                backgroundColor: list[i].id == id ? Colors.blueAccent : null,
                textColor: list[i].id == id ? Colors.white : null,
              ),
            ),
          ),
        );
      },
      orElse: Offstage.new,
    );
  }
}
