import 'package:equatable/equatable.dart';

import '../../model/handled_error.dart';
import '../../model/project.dart';

enum ProjectsOverviewPageStatus {
  init,
  success,
  error,
}

class ProjectsOverviewPageState extends Equatable {
  final ProjectsOverviewPageStatus status;
  final List<Project> projects;
  final HandledError error;

  const ProjectsOverviewPageState({
    this.status = ProjectsOverviewPageStatus.init,
    this.projects = const [],
    this.error = const HandledError.empty(),
  });

  ProjectsOverviewPageState copyWith({
    ProjectsOverviewPageStatus? status,
    List<Project>? projects,
    HandledError? error,
  }) {
    return ProjectsOverviewPageState(
      status: status ?? this.status,
      projects: projects ?? this.projects,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [
      status,
      projects,
      error,
    ];
  }
}
