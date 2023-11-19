import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/projects_overview_page/projects_overview_page_cubit.dart';
import '../../../bloc/projects_overview_page/projects_overview_page_state.dart';
import '../../../utils/bloc_auto_route_mixin.dart';
import '../../../utils/build_context_ext.dart';
import '../../views/app_border_box.dart';
import '../../views/page_wrapper.dart';

enum CrossAxisCount {
  oneRow,
  twoRows,
  threeRows;

  int get count {
    switch (this) {
      case CrossAxisCount.oneRow:
        return 1;
      case CrossAxisCount.twoRows:
        return 2;
      case CrossAxisCount.threeRows:
        return 3;
    }
  }
}

@RoutePage()
class ProjectsOverviewPage extends StatefulWidget
    with BlocAutoRouteMixin<ProjectsOverviewPageCubit> {
  const ProjectsOverviewPage({super.key});

  @override
  State<ProjectsOverviewPage> createState() => _ProjectsOverviewPageState();
}

class _ProjectsOverviewPageState extends State<ProjectsOverviewPage> {
  int _hoveredIndex = -1;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      context.read<ProjectsOverviewPageCubit>().getProjects(context);
    });
  }

  int _getCrossAxisCount() {
    if (context.isDesktop) return CrossAxisCount.threeRows.count;
    if (context.isTablet) return CrossAxisCount.twoRows.count;

    return CrossAxisCount.oneRow.count;
  }

  @override
  Widget build(BuildContext context) {
    final desktopTabletSize = context.isDesktop || context.isTablet;

    return BlocBuilder<ProjectsOverviewPageCubit, ProjectsOverviewPageState>(
      builder: (context, state) {
        return PageWrapper(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                mainAxisExtent: 220,
                crossAxisCount: _getCrossAxisCount(),
                crossAxisSpacing: desktopTabletSize ? 12 : 0,
              ),
              itemCount: state.projects.length,
              itemBuilder: (context, index) {
                return _buildProjectCard(context, index, state);
              },
            ),
          ],
        );
      },
    );
  }

  AppBorderBox _buildProjectCard(
    BuildContext context,
    int index,
    ProjectsOverviewPageState state,
  ) {
    return AppBorderBox(
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        hoverColor: context.colorTheme.transparent,
        splashColor: context.colorTheme.transparent,
        onTap: () {
          log('Go to Details');
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                title: Text('Details'),
              );
            },
          );
        },
        onHover: (isHovered) {
          setState(() {
            log('isHovered: $isHovered');
            _hoveredIndex = isHovered ? index : -1;
          });
        },
        child: Stack(
          children: [
            AnimatedOpacity(
              opacity: _hoveredIndex == index ? 0.4 : 0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      spreadRadius: 12,
                      color: context.colorTheme.black,
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                state.projects[index].name,
                textAlign: TextAlign.center,
                style: context.textTheme.mobileTitle.copyWith(
                  color: _hoveredIndex == index
                      ? context.colorTheme.white
                      : context.colorTheme.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
