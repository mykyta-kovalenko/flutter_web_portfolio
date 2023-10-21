import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';
import 'utils/build_context_ext.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => context.strings.appName,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: const Scaffold(
        body: Center(
          child: Text('Hello!'),
        ),
      ),
    );
  }
}
