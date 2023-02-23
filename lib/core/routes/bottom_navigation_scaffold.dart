import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class BottomNavigationScaffold extends StatelessWidget {
  const BottomNavigationScaffold({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final shellState = StatefulShellRouteState.of(context);

    return Scaffold(
      body: HeroMode(child: child),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.movie_outlined),
            label: context.l10n.movieNavBarText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.tv),
            label: context.l10n.seriesNavBarText,
          ),
        ],
        currentIndex: shellState.currentIndex,
        onTap: (index) => shellState.goBranch(index: index),
      ),
    );
  }
}
