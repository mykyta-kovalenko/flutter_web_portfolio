part of '../light_theme.dart';

ThemeData _createTheme() {
  final themeData = ThemeData(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        hoverColor: _AppColors.transparent,
        splashFactory: NoSplash.splashFactory,
        highlightColor: _AppColors.transparent,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        foregroundColor: _AppColors.white,
        splashFactory: NoSplash.splashFactory,
        shape: const BeveledRectangleBorder(),
        shadowColor: _AppColors.transparent,
        backgroundColor: _AppColors.black.withOpacity(.6),
      ),
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
  );

  return themeData;
}
