import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../mock/projects.dart';
import '../../../utils/build_context_ext.dart';
import '../../views/page_wrapper.dart';

@RoutePage()
class ProjectsOverviewPage extends StatelessWidget {
  const ProjectsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      children: [
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: getProjectsData(context).length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    left: 20,
                    child: Text(
                      getProjectsData(context).first.name,
                      style: context.textTheme.mobileTitle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
