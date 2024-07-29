import "dart:async";

import "package:flutter/material.dart";
import "package:initial_app/app.dart";
import "package:initial_app/core/config/environment.dart";
import "package:initial_app/core/config/injectable.dart";
import "package:initial_app/core/utils/logger.dart";

void main() {
  runZonedGuarded(
    () {
      configureDependencies(const DevEnvironment());

      runApp(const App());
    },
    (error, stack) {
      logger.critical("[main] $error");
    },
  );
}
