import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class NavigationScaffold extends StatelessWidget {
  const NavigationScaffold({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeroMode(child: navigationShell),
      bottomNavigationBar: NavigationBar(
        destinations: <Widget>[
          NavigationDestination(
            icon: const Icon(Icons.movie_outlined),
            label: context.l10n.movieNavBarText,
          ),
          NavigationDestination(
            icon: const Icon(Icons.tv),
            label: context.l10n.seriesNavBarText,
          ),
        ],
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
      ),
    );
  }
}
