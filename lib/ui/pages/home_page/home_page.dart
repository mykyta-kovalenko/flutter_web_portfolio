import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../mock/projects.dart';
import '../../../services/projects_data_source_service.dart';
import '../../../utils/build_context_ext.dart';
import '../../views/page_wrapper.dart';
import 'views/contact_block.dart';
import 'views/greeting_block.dart';
import 'views/projects_block.dart';
import 'views/references_block.dart';

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

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      children: [
        const GreetingBlock(),
        SizedBox(height: context.isDesktop ? 120 : 48),
        ProjectsBlock(projects: _projectsDataSource),
        SizedBox(height: context.isDesktop ? 120 : 48),
        const ReferencesBlock(),
        SizedBox(height: context.isDesktop ? 120 : 48),
        const ContactBlock(),
      ],
    );
  }
}
