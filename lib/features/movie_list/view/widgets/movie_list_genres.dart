import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';
import 'package:movie_list_bloc/view/widget/gender_item.dart';

class MovieListGenres extends StatelessWidget {
  const MovieListGenres({
    super.key,
    this.id,
    required this.genders,
    required this.onSelectGenre,
  });

  final int? id;
  final List<GenderModel> genders;
  final ValueSetter<GenderModel> onSelectGenre;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          itemCount: genders.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (_, i) => GenderItem(
            gender: genders[i],
            onSelectGender: onSelectGenre,
            backgroundColor: genders[i].id == id ? Colors.blueAccent : null,
            textColor: genders[i].id == id ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
