import 'package:injectable/injectable.dart';

import '../locator.dart';
import 'app_auto_router.dart';
import 'base_router.dart';

CvAppRouter get router => locator<CvAppRouter>();

@singleton
class CvAppRouter extends BaseRouter {
  CvAppRouter(AppAutoRouter super.router);

  Future<void> pushHomePage() async {
    await push(const HomeRoute());
  }

  Future<void> pushProjectsOverviewPage() async {
    await push(const ProjectsOverviewRoute());
  }
}
