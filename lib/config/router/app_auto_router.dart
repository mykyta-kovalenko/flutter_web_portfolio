import 'package:auto_route/auto_route.dart';

import '../../ui/pages/home_page/home_page.dart';
import '../../ui/pages/projects_overview_page/projects_overview_page.dart';
import '../../ui/pages/projects_structure_page/projects_structure_page.dart';
import '../../ui/pages/resources_page/resources_page.dart';

part 'app_auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppAutoRouter extends _$AppAutoRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.noTransition,
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/projects-overview',
          page: ProjectsOverviewRoute.page,
        ),
        AutoRoute(
          path: '/projects-structure',
          page: ProjectsStructureRoute.page,
        ),
        AutoRoute(
          path: '/resources',
          page: ResourcesRoute.page,
        ),
      ];
}
