import 'package:auto_route/auto_route.dart';

import '../../ui/pages/home_page/home_page.dart';
import '../../ui/pages/projects_overview_page/projects_overview_page.dart';

part 'app_auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppAutoRouter extends _$AppAutoRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.noTransition,
      );

  @override
  List<AutoRoute> get routes => [
        CustomRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: ProjectsOverviewRoute.page)
      ];
}
