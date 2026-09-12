import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

class SectionStaggeredAnimation extends HookWidget {
  const new({
    required this.controller,
    required this.child,
    this.startInterval = 0,
    this.endInterval = 1,
    super.key,
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
