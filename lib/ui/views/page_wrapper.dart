import 'package:flutter/material.dart';

import '../../config/router/app_router.dart';
import '../../utils/build_context_ext.dart';
import 'nav_menu_item.dart';

class PageWrapper extends StatefulWidget {
  final List<Widget> children;

  const PageWrapper({
    super.key,
    required this.children,
  });

  @override
  State<PageWrapper> createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  void showMenuPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          alignment: Alignment.topRight,
          backgroundColor: context.colorTheme.secondaryYellow,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: const _MobileMenuPopup(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final desktopSizing = MediaQuery.of(context).size.width * 0.2;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colorTheme.mainYellow,
            context.colorTheme.secondaryYellow,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: context.isDesktop ? desktopSizing : 20,
          ),
          children: [
            context.isDesktop
                ? _buildNonMobileAppBar(context, desktopSizing)
                : _buildMobileAppBar(context),
            const SizedBox(height: 36),
            ...widget.children,
            SizedBox(height: context.isDesktop ? 120 : 48),
          ],
        ),
      ),
    );
  }

  Widget _buildNonMobileAppBar(BuildContext context, double desktopSizing) {
    return Row(
      children: [
        GestureDetector(
          onTap: router.pushHomePage,
          child: Text(
            context.strings.mK,
            style: context.textTheme.mainTitle,
          ),
        ),
        const SizedBox(width: 36),
        Flexible(
          child: NavMenuItem(
            onTap: router.pushProjectsOverviewPage,
            title: context.strings.projectsOverview,
          ),
        ),
        const SizedBox(width: 36),
        Flexible(
          child: NavMenuItem(
            onTap: router.pushProjectsStructurePage,
            title: context.strings.projectsStructure,
          ),
        ),
        const SizedBox(width: 36),
        Flexible(
          child: NavMenuItem(
            onTap: router.pushResourcesPage,
            title: context.strings.resources,
          ),
        ),
      ],
    );
  }

  Widget _buildMobileAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: router.pushHomePage,
          child: Text(
            context.strings.mK,
            style: const TextStyle(fontSize: 40),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 44,
          onPressed: () => showMenuPopup(context),
        ),
      ],
    );
  }
}

class _MobileMenuPopup extends StatelessWidget {
  const _MobileMenuPopup();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: context.colorTheme.secondaryYellow,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        iconSize: 44,
                        onPressed: Navigator.of(context).pop,
                      ),
                    ),
                  ),
                  NavMenuItem(
                    title: context.strings.projectsOverview,
                    onTap: () {
                      router.pushProjectsOverviewPage();
                      Navigator.of(context).pop();
                    },
                  ),
                  NavMenuItem(
                    title: context.strings.projectsStructure,
                    onTap: () {
                      router.pushProjectsStructurePage();
                      Navigator.of(context).pop();
                    },
                  ),
                  NavMenuItem(
                    title: context.strings.resources,
                    onTap: () {
                      router.pushResourcesPage();
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
