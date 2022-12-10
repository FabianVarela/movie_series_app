import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SectionStaggeredAnimation extends HookWidget {
  const SectionStaggeredAnimation({
    super.key,
    required this.controller,
    required this.child,
    this.startInterval = 0,
    this.endInterval = 1,
  });

  final AnimationController controller;
  final Widget child;
  final double startInterval;
  final double endInterval;

  @override
  Widget build(BuildContext context) {
    final verticalOffset = useAnimation<double>(
      Tween<double>(begin: 20, end: 0).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(startInterval, endInterval, curve: Curves.decelerate),
        ),
      ),
    );

    final opacity = useAnimation<double>(
      Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(startInterval, endInterval, curve: Curves.decelerate),
        ),
      ),
    );

    return Transform.translate(
      offset: Offset(0, verticalOffset),
      child: Opacity(opacity: opacity, child: child),
    );
  }
}
