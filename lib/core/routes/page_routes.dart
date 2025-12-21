import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenPage<T> extends Page<T> {
  const ScreenPage({required super.key, required this.child});

  final Widget child;

  @override
  Route<T> createRoute(BuildContext context) {
    return switch (defaultTargetPlatform) {
      .iOS || .macOS => CupertinoPageRoute<T>(
        settings: this,
        builder: (_) => child,
      ),
      _ => MaterialPageRoute<T>(settings: this, builder: (_) => child),
    };
  }
}

class TransformScreenPage<T> extends Page<T> {
  const TransformScreenPage({required super.key, required this.child});

  final Widget child;

  @override
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder<T>(
      settings: this,
      pageBuilder: (_, _, _) => child,
      transitionsBuilder: (_, animation, _, child) {
        return Transform.scale(scale: animation.value, child: child);
      },
    );
  }
}

class FadeScreenPage<T> extends Page<T> {
  const FadeScreenPage({required super.key, required this.child});

  final Widget child;

  @override
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder<T>(
      settings: this,
      pageBuilder: (_, _, _) => child,
      transitionsBuilder: (_, animation, _, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
