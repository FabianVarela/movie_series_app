import 'package:flutter/material.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class IndicatorPage extends StatelessWidget {
  const IndicatorPage({this.start = 0, this.total = 0, super.key});

  final int start;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .bottomCenter,
      padding: const .only(bottom: 20),
      child: Text(
        context.l10n.quantityList(start, total),
        style: const TextStyle(fontSize: 18, fontWeight: .w300),
      ),
    );
  }
}
