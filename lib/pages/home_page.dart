import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/views/greeting_block.dart';

import '../utils/build_context_ext.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    implements GreetingBlockMenuDelegate {
  @override
  void onAboutMeTap(BuildContext context) {
    // TODO: implement onAboutMeTap
  }

  @override
  void onContactTap(BuildContext context) {
    // TODO: implement onContactTap
  }

  @override
  void onProjectsTap(BuildContext context) {
    // TODO: implement onProjectsTap
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorTheme.greenNephrite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GreetingBlock(
            menuDelegate: this,
          ),
        ),
      ),
    );
  }
}
