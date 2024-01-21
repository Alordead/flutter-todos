import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/application.dart';
import 'package:routing/routing.dart';

import 'services/service_interfaces.dart';
import 'startup/startup.dart';

Future<void> main() async {
  return runZonedGuarded<Future<void>>(
    () async {
      final _ = WidgetsFlutterBinding.ensureInitialized();

      if (kReleaseMode) {
        // ignore: no-empty-block
        debugPrint = (message, {wrapWidth}) {
          // Note(alordead): No need to print anything in release mode.
        };
      }

      final diContainer = await Startup.start();

      runApp(
        Application(
          appRouterConfiguration: diContainer.get<AppRouterConfiguration>(),
          localizationService: diContainer.get<ILocalizationService>(),
        ),
      );
    },
    (error, stackTrace) {
      debugPrint('runZonedGuarded: $error, $stackTrace');
      // TODO(alordead): Add custom loggers, like Firebase Crashlytics.
    },
  );
}
