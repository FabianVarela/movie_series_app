import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({
    required this.title,
    required this.subtitle,
    this.isRow = true,
    super.key,
  });

  final String title;
  final String subtitle;
  final bool isRow;

  @override
  Widget build(BuildContext context) {
    final listText = <Widget>[
      Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: .w600),
      ),
      Text(subtitle, style: const TextStyle(fontSize: 16)),
    ];

    return isRow
        ? Row(children: listText)
        : Column(crossAxisAlignment: .start, children: listText);
  }
}
