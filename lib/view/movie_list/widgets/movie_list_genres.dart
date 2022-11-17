import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_state.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';
import 'package:movie_list_bloc/view/widget/gender_item.dart';

class MovieListGenres extends StatelessWidget {
  const MovieListGenres({super.key, this.id, required this.onSelectGenre});

  final int? id;
  final ValueSetter<GenderModel> onSelectGenre;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenderBloc, GenderState>(
      builder: (_, state) => state.maybeWhen(
        loading: () => Center(
          child: Transform.scale(
            scale: .7,
            child: const CircularProgressIndicator(),
          ),
        ),
        success: (gender) {
          final genders = gender.genders;
          return SizedBox(
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
          );
        },
        orElse: Offstage.new,
      ),
    );
  }
}
