import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../utils/build_context_ext.dart';
import 'nav_menu_item.dart';

class GreetingBlock extends StatelessWidget {
  const GreetingBlock({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.breakpoint.isDesktop || context.breakpoint.isTablet) {
      return const _NonMobileGreeting();
    }

    return const _MobileGreeting();
  }
}

// Non-mobile greeting block, includes desktop and tablet.
class _NonMobileGreeting extends StatelessWidget {
  const _NonMobileGreeting();

  @override
  Widget build(BuildContext context) {
    // final mq = MediaQuery.of(context);

    return const Placeholder();
  }
}

class _MobileGreeting extends StatelessWidget {
  const _MobileGreeting();

  void showMenuPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          alignment: Alignment.topRight,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          insetPadding: EdgeInsets.zero,
          child: _MobileMenuPopup(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAppBar(context),
        Text(
          context.strings.heyImMykyta,
          style: context.textTheme.mobileTitle,
        ),
        const SizedBox(height: 20),
        Text(
          context.strings.aMobileEngineer,
          style: context.textTheme.mobileSubtitle,
        ),
        const SizedBox(height: 12),
        Text(
          context.strings.iBuildApps,
          style: context.textTheme.mobileSubtitle,
        ),
        const SizedBox(height: 20),
        _buildStatisticsRow(context),
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.center,
          child: _buildResumeButton(context),
        ),
        const SizedBox(height: 24),
        //TODO: Adjust image look.
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFefdf1a), width: 4),
          ),
          child: Image.asset(
            Assets.img4102.path,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'MK',
          style: TextStyle(fontSize: 32),
        ),
        IconButton(
          icon: const Icon(Icons.menu_rounded),
          iconSize: 64,
          onPressed: () => showMenuPopup(context),
        ),
      ],
    );
  }

  Widget _buildStatisticsRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            context.strings.commercialProjects,
            style: context.textTheme.mobileSubtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            context.strings.workingHours,
            style: context.textTheme.mobileSubtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            context.strings.technologyStack,
            style: context.textTheme.mobileSubtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResumeButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        splashFactory: NoSplash.splashFactory,
        textStyle: context.textTheme.mobileSubtitle,
        backgroundColor: context.colorTheme.black.withOpacity(.6),
      ),
      child: Text(context.strings.getResume.toUpperCase()),
    );
  }
}

//TODO: Extract to separate file.
class _MobileMenuPopup extends StatelessWidget {
  const _MobileMenuPopup();

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
                  },
                ),
                NavMenuItem(
                  title: context.strings.appName,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                NavMenuItem(
                  title: context.strings.appName,
                  onTap: () {
                    Navigator.of(context).pop();
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
