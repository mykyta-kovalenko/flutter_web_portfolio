part of '../light_theme.dart';

class _LightTextThemeData implements AppTextThemeData {
  const _LightTextThemeData();

  @override
  TextStyle get mainTitle => _textStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 48,
      );

  @override
  TextStyle get mainSubtitle => _textStyle.copyWith(
        fontSize: 18,
      );
  @override
  TextStyle get mobileTitle => _textStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w800,
      );

  @override
  TextStyle get mobileSubtitle => _textStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get bridgeTitle => _textStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get bridgeSubtitle => _textStyle.copyWith(
        fontSize: 20,
      );

  @override
  TextStyle get mainBodyText => _textStyle.copyWith(
        fontSize: 18,
      );

  @override
  TextStyle get mobileBodyText => _textStyle.copyWith(
        fontSize: 14,
      );
}
