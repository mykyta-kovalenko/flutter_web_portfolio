// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_auto_router.dart';

abstract class _$AppAutoRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppAutoRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ProjectsOverviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProjectsOverviewPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProjectsOverviewPage]
class ProjectsOverviewRoute extends PageRouteInfo<void> {
  const ProjectsOverviewRoute({List<PageRouteInfo>? children})
      : super(
          ProjectsOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectsOverviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
