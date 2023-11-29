import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/build_context_ext.dart';
import '../../views/page_wrapper.dart';

@RoutePage()
class ProjectsStructurePage extends StatelessWidget {
  const ProjectsStructurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      children: [
        Text(
          'Hey There!\nSorry, I\'m still working on this page!',
          style: context.isDesktop
              ? context.textTheme.mainTitle
              : context.textTheme.mobileTitle,
        ),
      ],
    );
  }
}
