import 'package:flutter/material.dart';

import '../enums/project_location.dart';
import '../enums/project_platform.dart';
import '../enums/project_status.dart';
import '../gen/assets.gen.dart';
import '../model/project.dart';
import '../utils/build_context_ext.dart';

List<Project> getProjectsData(BuildContext context) {
  return [
    Project(
      name: context.strings.iSeeTheWorld,
      projectPlatform: const [ProjectPlatform.web],
      projectStatus: ProjectStatus.ongoing,
      projectLocation: ProjectLocation.theUnitedStates,
      description: context.strings.iSeeTheWorldDescription,
    ),
    Project(
      name: context.strings.zona,
      projectPlatform: const [
        ProjectPlatform.ios,
        ProjectPlatform.android,
      ],
      projectStatus: ProjectStatus.abandoned,
      projectLocation: ProjectLocation.theUnitedStates,
      description: context.strings.zonaDescription,
    ),
    Project(
      name: context.strings.uAustin,
      projectPlatform: const [
        ProjectPlatform.ios,
        ProjectPlatform.android,
      ],
      projectStatus: ProjectStatus.paused,
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
      images: [
        Assets.images.threewella0.path,
        Assets.images.threewella1.path,
        Assets.images.threewella2.path,
        Assets.images.threewella3.path,
      ],
      logo: Assets.images.threewellaLogo.path,
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
      images: [
        Assets.images.groovifi0.path,
        Assets.images.groovifi1.path,
        Assets.images.groovifi2.path,
        Assets.images.groovifi3.path,
        Assets.images.groovifi4.path,
        Assets.images.groovifi5.path,
      ],
      logo: Assets.images.groovifiLogo.path,
    ),
    Project(
      name: context.strings.jiq,
      projectPlatform: const [ProjectPlatform.android],
      projectStatus: ProjectStatus.completed,
      projectLocation: ProjectLocation.ukraine,
      description: context.strings.jiqDescription,
      images: [
        Assets.images.jiq0.path,
        Assets.images.jiq1.path,
        Assets.images.jiq2.path,
      ],
      logo: Assets.images.jiqLogo.path,
    ),
    Project(
      name: context.strings.financeFlow,
      projectPlatform: const [ProjectPlatform.android],
      projectStatus: ProjectStatus.completed,
      projectLocation: ProjectLocation.ukraine,
      description: context.strings.financeFlowDescription,
      images: [
        Assets.images.ff0.path,
        Assets.images.ff1.path,
        Assets.images.ff2.path,
        Assets.images.ff3.path,
        Assets.images.ff4.path,
        Assets.images.ff5.path,
        Assets.images.ff6.path,
      ],
      logo: Assets.images.ffLogo.path,
    ),
  ];
}
