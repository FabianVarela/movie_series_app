import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({
    super.key,
    required this.gender,
    this.onSelectGender,
    this.backgroundColor,
    this.textColor,
  });

  final GenderModel gender;
  final ValueSetter<GenderModel>? onSelectGender;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: onSelectGender != null ? () => onSelectGender!(gender) : null,
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: (backgroundColor ?? Colors.white).withOpacity(.6),
            child: Text(
              gender.name[0].toUpperCase(),
              style: TextStyle(color: textColor ?? Colors.black),
            ),
          ),
          label: Text(
            gender.name,
            style: TextStyle(fontSize: 15, color: textColor ?? Colors.black),
          ),
          elevation: 5,
          shadowColor: Colors.black,
          padding: const EdgeInsets.all(4),
        ),
      ),
    );
  }
}
