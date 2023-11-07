import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'gen/app_router.dart';
import 'l10n/app_localizations.dart';
import 'themes/light/light_theme.dart';
import 'themes/theme/app_theme.dart';
import 'utils/build_context_ext.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      theme: LightThemeData(),
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        debugShowCheckedModeBanner: false,
        supportedLocales: AppLocalizations.supportedLocales,
        onGenerateTitle: (context) => context.strings.appName,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
        builder: _buildApp,
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
