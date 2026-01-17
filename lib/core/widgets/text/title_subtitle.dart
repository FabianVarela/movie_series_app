import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({
    required this.title,
    required this.value,
    this.icon,
    super.key,
  });

  final String title;
  final String value;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      spacing: 4,
      mainAxisSize: .min,
      children: <Widget>[
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 12,
            fontWeight: .w500,
            color: colorScheme.onSurface.withValues(alpha: .6),
          ),
        ),
        Row(
          spacing: 4,
          mainAxisSize: .min,
          children: <Widget>[
            if (icon != null) Icon(icon, size: 16, color: colorScheme.primary),
            Flexible(
              child: Text(
                value,
                maxLines: 2,
                textAlign: .center,
                overflow: .ellipsis,
                style: TextStyle(
                  fontWeight: .w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
