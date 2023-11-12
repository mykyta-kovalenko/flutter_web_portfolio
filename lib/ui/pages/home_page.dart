import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../mock/projects.dart';
import '../../services/projects_data_source_service.dart';
import '../../utils/build_context_ext.dart';
import '../views/contact_block.dart';
import '../views/greeting_block.dart';
import '../views/nav_menu_item.dart';
import '../views/projects_block.dart';
import '../views/references_block.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ProjectsDataSourceService _projectsDataSource;

  @override
  void didChangeDependencies() {
    _projectsDataSource = ProjectsDataSourceService(
      context,
      projects: getProjectsData(context),
    );
    super.didChangeDependencies();
  }

  void showMenuPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          alignment: Alignment.topRight,
          backgroundColor: context.colorTheme.secondaryYellow,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          insetPadding: EdgeInsets.zero,
          child: const _MobileMenuPopup(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var desktopSizing = MediaQuery.of(context).size.width * 0.05;
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (context.isDesktop) ...{
                _buildNonMobileAppBar(context, desktopSizing),
              },
              ListView(
                padding: EdgeInsets.all(
                  context.isDesktop ? desktopSizing : 20,
                ),
                shrinkWrap: true,
                children: [
                  if (!context.isDesktop) _buildMobileAppBar(context),
                  const GreetingBlock(),
                  SizedBox(height: context.isDesktop ? desktopSizing : 48),
                  ProjectsBlock(projects: _projectsDataSource),
                  SizedBox(height: context.isDesktop ? desktopSizing : 48),
                  const ReferencesBlock(),
                  SizedBox(height: context.isDesktop ? desktopSizing : 48),
                  const ContactBlock(),
                  SizedBox(height: context.isDesktop ? desktopSizing : 48),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNonMobileAppBar(
    BuildContext context,
    double desktopSizing,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 24,
        horizontal: desktopSizing,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'MK',
            style: context.textTheme.mainTitle,
          ),
          const SizedBox(width: 36),
          Text(
            'Projects Overview',
            style: context.textTheme.mainSubtitle,
          ),
          const SizedBox(width: 36),
          Text(
            'Projects Structure',
            style: context.textTheme.mainSubtitle,
          ),
          const SizedBox(width: 36),
          Text(
            'Resources',
            style: context.textTheme.mainSubtitle,
          ),
        ],
      ),
    );
  }

  Widget _buildMobileAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'MK',
          style: TextStyle(fontSize: 40),
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

//TODO: Extract to separate file.
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
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ),
                  NavMenuItem(
                    title: 'Projects Overview',
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  NavMenuItem(
                    title: 'Projects Structure',
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  NavMenuItem(
                    title: 'Resources',
                    onTap: () {
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
