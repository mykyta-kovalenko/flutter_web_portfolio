part of '../light_theme.dart';

ThemeData _createTheme() {
  final themeData = ThemeData(
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
  );

  return themeData;
}
