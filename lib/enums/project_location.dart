import 'package:flutter/material.dart';

import '../utils/build_context_ext.dart';

enum ProjectLocation {
  ukraine,
  theUnitedStates,
  thailand,
  israel;

  String getName(BuildContext context) {
    switch (this) {
      case ProjectLocation.ukraine:
        return context.strings.ukraine;
      case ProjectLocation.theUnitedStates:
        return context.strings.theUnitedStates;
      case ProjectLocation.thailand:
        return context.strings.thailand;
      case ProjectLocation.israel:
        return context.strings.israel;
      default:
        return '';
    }
  }
}
