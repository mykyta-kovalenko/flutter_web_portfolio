/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/icons8-github.svg
  String get icons8Github => 'assets/icons/icons8-github.svg';

  /// File path: assets/icons/icons8-instagram.svg
  String get icons8Instagram => 'assets/icons/icons8-instagram.svg';

  /// File path: assets/icons/icons8-linkedin.svg
  String get icons8Linkedin => 'assets/icons/icons8-linkedin.svg';

  /// List of all assets
  List<String> get values => [icons8Github, icons8Instagram, icons8Linkedin];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/IMG_4102.JPG
  AssetGenImage get img4102 =>
      const AssetGenImage('assets/images/IMG_4102.JPG');

  /// File path: assets/images/anastasiia.jpeg
  AssetGenImage get anastasiia =>
      const AssetGenImage('assets/images/anastasiia.jpeg');

  /// File path: assets/images/bogdan.jpeg
  AssetGenImage get bogdan => const AssetGenImage('assets/images/bogdan.jpeg');

  /// File path: assets/images/oleksii.jpeg
  AssetGenImage get oleksii =>
      const AssetGenImage('assets/images/oleksii.jpeg');

  /// File path: assets/images/yaroslav.jpeg
  AssetGenImage get yaroslav =>
      const AssetGenImage('assets/images/yaroslav.jpeg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [img4102, anastasiia, bogdan, oleksii, yaroslav];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const String mykytaKovalenkoResume =
      'assets/mykyta_kovalenko_resume.pdf';

  /// List of all assets
  List<String> get values => [mykytaKovalenkoResume];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
