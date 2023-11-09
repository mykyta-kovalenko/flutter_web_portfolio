import 'package:flutter/material.dart';

import '../utils/build_context_ext.dart';

enum ProjectStatus {
  ongoing,
  toBeReleased,
  completed,
  abandoned,
  paused;

  String getName(BuildContext context) {
    switch (this) {
      case ProjectStatus.ongoing:
        return context.strings.onGoing;
      case ProjectStatus.toBeReleased:
        return context.strings.toBeReleased;
      case ProjectStatus.completed:
        return context.strings.completed;
      case ProjectStatus.abandoned:
        return context.strings.abandoned;
      case ProjectStatus.paused:
        return context.strings.paused;
      default:
        return '';
    }
  }
}
