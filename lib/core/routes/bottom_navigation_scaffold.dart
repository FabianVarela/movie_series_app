import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class BottomNavigationScaffold extends StatelessWidget {
  const BottomNavigationScaffold({
    required this.navigationShell,
    required this.screens,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> screens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeroMode(
        child: IndexedStack(
          sizing: StackFit.expand,
          index: navigationShell.currentIndex,
          children: screens.map((screen) => screen).toList(),
        ),
      ),
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
        currentIndex: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
      ),
    );
  }
}
