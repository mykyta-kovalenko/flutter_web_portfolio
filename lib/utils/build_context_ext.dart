import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../l10n/app_localizations.dart';
import '../themes/theme/app_theme.dart';

extension AppLocalizationsBuildContextExt on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this);
}

extension AppThemeBuildContextExt on BuildContext {
  AppTextThemeData get textTheme => AppTheme.text(this);
  AppColorThemeData get colorTheme => AppTheme.color(this);
}

extension AppLayoutBuildContextExt on BuildContext {
  ResponsiveBreakpointsData get breakpoint => ResponsiveBreakpoints.of(this);
}
