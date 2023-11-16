import 'package:auto_route/auto_route.dart';

import '../../ui/pages/home_page.dart';

part 'app_auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppAutoRouter extends _$AppAutoRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: HomeRoute.page, initial: true)];
}
