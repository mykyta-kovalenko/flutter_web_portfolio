import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../enums/project_status.dart';
import '../mock/projects.dart';
import '../model/project.dart';

@injectable
class ProjectsOverviewService {
  List<Project> getProjects(BuildContext context) {
    return getProjectsData(context).where((element) {
      return element.projectStatus == ProjectStatus.completed;
    }).toList();
  }
}
