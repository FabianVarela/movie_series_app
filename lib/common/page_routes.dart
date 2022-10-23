import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> setDefaultPageRoute<T>({
  required LocalKey pageKey,
  required Widget child,
}) {
  if (Platform.isIOS || Platform.isMacOS) {
    return CupertinoPage<T>(key: pageKey, child: child);
  }
  return MaterialPage<T>(key: pageKey, child: child);
}

CustomTransitionPage<dynamic> setTransformPageRoute<T>({
  required LocalKey pageKey,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: pageKey,
    child: child,
    transitionsBuilder: (_, animation, __, child) =>
        Transform.scale(scale: animation.value, child: child),
  );
}

CustomTransitionPage<dynamic> setFadePageRoute<T>({
  required LocalKey pageKey,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: pageKey,
    child: child,
    transitionsBuilder: (_, animation, __, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
