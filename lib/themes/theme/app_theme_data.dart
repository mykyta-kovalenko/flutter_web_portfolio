part of 'app_theme.dart';

class AppThemeData {
  AppThemeData({
    required this.themeData,
    required this.textTheme,
    required this.colorTheme,
  });

  final ThemeData themeData;

  /// Should not be used directly.
  /// Please, use `MainTheme.text(context)`
  @protected
  final AppTextThemeData textTheme;

  /// Should not be used directly.
  /// Please, use `MainTheme.color(context)`
  @protected
  final AppColorThemeData colorTheme;
}
