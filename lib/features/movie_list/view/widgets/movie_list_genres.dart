import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/model/gender_model.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/widgets/gender_item.dart';
import 'package:movie_list_bloc/features/movie_list/repository/movie_list_repository.dart';

class MovieListGenres extends ConsumerWidget {
  const MovieListGenres({super.key, this.id, required this.onSelect});

  final int? id;
  final ValueSetter<GenderModel> onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final genders = ref.watch(
      fetchGendersProvider(language: locale.requireValue?.languageCode),
    );

    return genders.maybeWhen(
      data: (gender) {
        final list = gender.genders;
        return Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, i) => GenderItem(
                gender: list[i],
                onSelectGender: onSelect,
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
