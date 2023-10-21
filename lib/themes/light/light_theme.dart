import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

part 'src/color_theme.dart';
part 'src/constants.dart';
part 'src/text_theme.dart';
part 'src/theme_data.dart';

class LightThemeData extends AppThemeData {
  LightThemeData()
      : super(
          themeData: _createTheme(),
          textTheme: const _LightTextThemeData(),
          colorTheme: const _LightColorThemeData(),
        );
}
