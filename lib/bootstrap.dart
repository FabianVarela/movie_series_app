import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[DeviceOrientation.portraitUp],
  );

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async => runApp(ProviderScope(child: await builder())),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
