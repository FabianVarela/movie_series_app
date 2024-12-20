import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  const GenreItem({
    required this.name,
    this.onSelect,
    this.backgroundColor,
    this.textColor,
    super.key,
  });

  final String name;
  final VoidCallback? onSelect;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final background = backgroundColor ?? Colors.white;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () => onSelect?.call(),
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: background.withValues(alpha: .6),
            child: Text(
              name[0].toUpperCase(),
              style: TextStyle(color: textColor ?? Colors.black),
            ),
          ),
          label: Text(
            name,
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
