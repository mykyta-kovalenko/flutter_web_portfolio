import 'package:flutter/material.dart';

part 'app_color_theme_data.dart';
part 'app_text_theme_data.dart';
part 'app_theme_data.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    super.key,
    required this.theme,
    required super.child,
  });

  static AppThemeData of(BuildContext context) => maybeOf(context)!;
  static AppThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>()?.theme;
  }

  static AppTextThemeData text(BuildContext context) => of(context).textTheme;
  static AppColorThemeData color(BuildContext context) =>
      of(context).colorTheme;

  final AppThemeData theme;

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return theme != oldWidget.theme;
  }
}
