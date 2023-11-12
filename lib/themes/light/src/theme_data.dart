part of '../light_theme.dart';

ThemeData _createTheme() {
  final themeData = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        splashFactory: NoSplash.splashFactory,
        backgroundColor: _AppColors.black.withOpacity(.6),
      ),
    ),
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all<Color>(Colors.red),
        trackColor: MaterialStateProperty.all<Color>(Colors.red),
        thumbVisibility: MaterialStateProperty.all(true)),
  );

  return themeData;
}
