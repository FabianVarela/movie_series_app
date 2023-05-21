import 'package:flutter/material.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class IndicatorPage extends StatelessWidget {
  const IndicatorPage({this.start = 0, this.total = 0, super.key});

  final int start;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        context.l10n.quantityList(start, total),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
