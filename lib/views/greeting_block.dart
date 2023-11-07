import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/build_context_ext.dart';

import '../gen/assets.gen.dart';
import 'nav_menu_item.dart';

abstract class GreetingBlockMenuDelegate {
  void onProjectsTap(BuildContext context);
  void onAboutMeTap(BuildContext context);
  void onContactTap(BuildContext context);
}

class GreetingBlock extends StatelessWidget {
  final GreetingBlockMenuDelegate menuDelegate;

  const GreetingBlock({super.key, required this.menuDelegate});

  @override
  Widget build(BuildContext context) {
    if (context.breakpoint.isDesktop || context.breakpoint.isTablet) {
      return const _NonMobileGreeting();
    }

    return _MobileGreeting(menuDelegate: menuDelegate);
  }
}

class _NonMobileGreeting extends StatelessWidget {
  const _NonMobileGreeting();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    return const Placeholder();
  }
}

class _MobileGreeting extends StatelessWidget {
  final GreetingBlockMenuDelegate menuDelegate;

  const _MobileGreeting({required this.menuDelegate});

  void showMenuPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          alignment: Alignment.topRight,
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          insetPadding: EdgeInsets.zero,
          child: _MobileMenuPopup(
            menuDelegate: menuDelegate,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildMenuRow(context),
        Text(context.strings.heyImMykyta),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 8),
              ),
              child: Image.asset(
                Assets.img4102.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMenuRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'MK',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: IconButton(
            icon: const Icon(Icons.menu_rounded),
            iconSize: 64,
            onPressed: () => showMenuPopup(context),
          ),
        ),
      ],
    );
  }
}

class _MobileMenuPopup extends StatelessWidget {
  const _MobileMenuPopup({required this.menuDelegate});

  final GreetingBlockMenuDelegate menuDelegate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox.shrink(),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: context.colorTheme.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: IconButton(
                      icon: const Icon(Icons.close_rounded),
                      iconSize: 64,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ),
                NavMenuItem(
                  title: context.strings.appName,
                  onTap: () {
                    Navigator.of(context).pop();
                    menuDelegate.onProjectsTap(context);
                  },
                ),
                NavMenuItem(
                  title: context.strings.appName,
                  onTap: () {
                    Navigator.of(context).pop();
                    menuDelegate.onAboutMeTap(context);
                  },
                ),
                NavMenuItem(
                  title: context.strings.appName,
                  onTap: () {
                    Navigator.of(context).pop();
                    menuDelegate.onContactTap(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
