import 'package:flutter/material.dart';

class MovieListHeader extends StatelessWidget {
  const MovieListHeader({
    super.key,
    required this.title,
    required this.onRestore,
  });

  final String title;
  final VoidCallback onRestore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: const Icon(Icons.search_outlined),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: onRestore,
            child: const Icon(Icons.restart_alt_outlined),
          ),
        ],
      ),
    );
  }
}
