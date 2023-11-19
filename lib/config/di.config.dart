// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/projects_overview_page/projects_overview_page_cubit.dart'
    as _i6;
import '../services/projects_overview_service.dart' as _i5;
import 'modules/auto_router_module.dart' as _i7;
import 'router/app_auto_router.dart' as _i3;
import 'router/app_router.dart' as _i4;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $configureDependencies(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final autoRouterModule = _$AutoRouterModule();
  gh.singleton<_i3.AppAutoRouter>(autoRouterModule.appAutoRouter());
  gh.singleton<_i4.CvAppRouter>(_i4.CvAppRouter(gh<_i3.AppAutoRouter>()));
  gh.factory<_i5.ProjectsOverviewService>(() => _i5.ProjectsOverviewService());
  gh.factory<_i6.ProjectsOverviewPageCubit>(
      () => _i6.ProjectsOverviewPageCubit(gh<_i5.ProjectsOverviewService>()));
  return getIt;
}

class _$AutoRouterModule extends _i7.AutoRouterModule {}
