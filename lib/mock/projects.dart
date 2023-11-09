import 'package:flutter/material.dart';

import '../enums/project_location.dart';
import '../enums/project_platform.dart';
import '../enums/project_status.dart';
import '../model/project.dart';
import '../utils/build_context_ext.dart';

List<Project> getProjectsData(BuildContext context) {
  return [
    Project(
      name: context.strings.liluPhotography,
      projectPlatform: const [ProjectPlatform.web],
      projectStatus: ProjectStatus.toBeReleased,
      projectLocation: ProjectLocation.theUnitedStates,
      description: context.strings.liluPhotographyDescription,
    ),
    Project(
      name: context.strings.uAustin,
      projectPlatform: const [
        ProjectPlatform.ios,
        ProjectPlatform.android,
      ],
      projectStatus: ProjectStatus.ongoing,
      projectLocation: ProjectLocation.theUnitedStates,
      description: context.strings.uAustinDescription,
    ),
    Project(
      name: context.strings.threeWella,
      projectPlatform: const [
        ProjectPlatform.ios,
        ProjectPlatform.android,
      ],
      projectStatus: ProjectStatus.completed,
      projectLocation: ProjectLocation.thailand,
      description: context.strings.threeWellaDescription,
    ),
    Project(
      name: context.strings.heisenbergCafeMenu,
      projectPlatform: const [ProjectPlatform.web],
      projectStatus: ProjectStatus.paused,
      projectLocation: ProjectLocation.ukraine,
      description: context.strings.heisenbergCafeMenuDescription,
    ),
    Project(
      name: context.strings.groovifi,
      projectPlatform: const [
        ProjectPlatform.ios,
        ProjectPlatform.android,
      ],
      projectStatus: ProjectStatus.completed,
      projectLocation: ProjectLocation.israel,
      description: context.strings.groovifiDescription,
    ),
    Project(
      name: context.strings.jiq,
      projectPlatform: const [ProjectPlatform.android],
      projectStatus: ProjectStatus.completed,
      projectLocation: ProjectLocation.ukraine,
      description: context.strings.jiqDescription,
    ),
    Project(
      name: context.strings.financeFlow,
      projectPlatform: const [ProjectPlatform.android],
      projectStatus: ProjectStatus.completed,
      projectLocation: ProjectLocation.ukraine,
      description: context.strings.financeFlowDescription,
    ),
  ];
}
