import 'package:flutter/material.dart';

import '../utils/build_context_ext.dart';

enum ProjectPlatform {
  web,
  android,
  ios;

  String getName(BuildContext context) {
    switch (this) {
      case ProjectPlatform.web:
        return context.strings.web;
      case ProjectPlatform.android:
        return context.strings.android;
      case ProjectPlatform.ios:
        return context.strings.iOS;
      default:
        return '';
    }
  }
}
