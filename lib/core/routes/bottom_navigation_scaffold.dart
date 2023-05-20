import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class BottomNavigationScaffold extends StatelessWidget {
  const BottomNavigationScaffold({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
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
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouter.of(context).location;
    return switch (location) {
      _ when location.contains('/movies') => 0,
      _ when location.contains('/series') => 1,
      _ => 0,
    };
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/movies');
      case 1:
        context.go('/series');
    }
  }
}
