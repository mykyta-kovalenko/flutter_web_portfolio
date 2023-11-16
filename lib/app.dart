import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'config/locator.dart';
import 'config/router/app_auto_router.dart';
import 'config/router/app_observer.dart';
import 'l10n/app_localizations.dart';
import 'themes/light/light_theme.dart';
import 'themes/theme/app_theme.dart';
import 'utils/build_context_ext.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = locator<AppAutoRouter>();

    return AppTheme(
      theme: LightThemeData(),
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.of(context).themeData,
            supportedLocales: AppLocalizations.supportedLocales,
            onGenerateTitle: (context) => context.strings.appName,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
            routeInformationParser: appRouter.defaultRouteParser(),
            routeInformationProvider: appRouter.routeInfoProvider(),
            routerDelegate: appRouter.delegate(
              navigatorObservers: () => [
                AppObserver(),
                AutoRouteObserver(),
              ],
            ),
            builder: _buildApp,
          );
        },
      ),
    );
  }

  Widget _buildApp(BuildContext context, Widget? child) {
    Widget wrappedChild = child!;

    wrappedChild = ResponsiveBreakpoints.builder(
      child: wrappedChild,
      breakpoints: [
        const Breakpoint(start: 0, end: 480, name: MOBILE),
        const Breakpoint(start: 481, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K')
      ],
    );

    if (kDebugMode) {
      final screenSize = MediaQuery.of(context).size;
      final screenSizeText = '${screenSize.width}x${screenSize.height}';
      wrappedChild = Banner(
        message: screenSizeText,
        location: BannerLocation.bottomEnd,
        child: wrappedChild,
      );
    }

    return wrappedChild;
  }
}
