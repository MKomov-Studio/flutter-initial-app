import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

extension BuildContextX on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  AppLocalizations get strings => AppLocalizations.of(this)!;
}
