import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../model/handled_error.dart';
import '../../services/projects_overview_service.dart';
import '../core/base_cubit.dart';
import 'projects_overview_page_state.dart';

@injectable
class ProjectsOverviewPageCubit extends BaseCubit<ProjectsOverviewPageState> {
  final ProjectsOverviewService _projectsOverviewService;

  ProjectsOverviewPageCubit(
    this._projectsOverviewService,
  ) : super(const ProjectsOverviewPageState());

  @override
  void handleError(HandledError error) {
    emit(state.copyWith(
      error: error,
      status: ProjectsOverviewPageStatus.error,
    ));
  }

  Future<void> getProjects(BuildContext context) async {
    await makeErrorHandledCall(() async {
      emit(state.copyWith(
        projects: _projectsOverviewService.getProjects(context),
        status: ProjectsOverviewPageStatus.success,
      ));
    });
  }
}
