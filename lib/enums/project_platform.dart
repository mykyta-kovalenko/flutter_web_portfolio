import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../gen/assets.gen.dart';
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
    }
  }

  String getIcon(BuildContext context) {
    switch (this) {
      case ProjectPlatform.web:
        return '';
      case ProjectPlatform.android:
        return Assets.icons.icons8GooglePlay;
      case ProjectPlatform.ios:
        return Assets.icons.icons8AppStore;
    }
  }

//TODO: Handle web when project is ready
//TODO: If no url, show a toast
  Future<bool> getUrl({
    String? androidUrl,
    String? iosUrl,
  }) async {
    switch (this) {
      case ProjectPlatform.web:
        log('Go to Web');
        return false;
      case ProjectPlatform.android:
        log('Go to Android');
        return launchUrlString(androidUrl ?? '');
      case ProjectPlatform.ios:
        log('Go to iOS');
        return launchUrlString(iosUrl ?? '');
    }
  }
}
