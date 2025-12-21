import 'package:flutter/material.dart';

typedef CircleColor = ({Color background, Color foreground});

class GenreItem extends StatelessWidget {
  const GenreItem({
    required this.name,
    this.onSelect,
    this.circleColor,
    this.textColor,
    super.key,
  });

  final String name;
  final VoidCallback? onSelect;
  final CircleColor? circleColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect?.call(),
      child: Chip(
        elevation: 5,
        padding: const .all(4),
        avatar: CircleAvatar(
          backgroundColor: circleColor?.background,
          child: Text(
            name[0].toUpperCase(),
            style: TextStyle(color: circleColor?.foreground),
          ),
        ),
        label: Text(name, style: TextStyle(fontSize: 15, color: textColor)),
        shadowColor: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
