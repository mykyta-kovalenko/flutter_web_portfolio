import 'package:equatable/equatable.dart';

import '../enums/project_location.dart';
import '../enums/project_platform.dart';
import '../enums/project_status.dart';

class Project extends Equatable {
  final String name;
  final List<ProjectPlatform> projectPlatform;
  final ProjectStatus projectStatus;
  final ProjectLocation projectLocation;
  final String description;
  final List<String>? images;

  const Project({
    required this.name,
    required this.projectPlatform,
    required this.projectStatus,
    required this.projectLocation,
    required this.description,
    this.images,
  });

  Project copyWith({
    String? name,
    List<ProjectPlatform>? projectPlatform,
    ProjectStatus? projectStatus,
    ProjectLocation? projectLocation,
    String? description,
    List<String>? images,
  }) {
    return Project(
      name: name ?? this.name,
      projectPlatform: projectPlatform ?? this.projectPlatform,
      projectStatus: projectStatus ?? this.projectStatus,
      projectLocation: projectLocation ?? this.projectLocation,
      description: description ?? this.description,
      images: images ?? this.images,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      projectPlatform,
      projectStatus,
      projectLocation,
      description,
      images,
    ];
  }
}
