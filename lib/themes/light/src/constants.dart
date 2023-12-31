part of '../light_theme.dart';

//TODO: Add font family.
const _textStyle = TextStyle(
  fontSize: 34,
  color: _AppColors.black,
);

abstract class _AppColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF181818);
  static const mainYellow = Color(0xFFEFC01A);
  static const transparent = Color(0x00000000);
  static const textButtonRed = Color(0xFFF44336);
  static const secondaryYellow = Color(0xFFEFDF1A);
}
