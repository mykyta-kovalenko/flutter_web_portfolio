import 'dart:developer';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/projects_overview_page/projects_overview_page_cubit.dart';
import '../../../bloc/projects_overview_page/projects_overview_page_state.dart';
import '../../../utils/bloc_auto_route_mixin.dart';
import '../../../utils/build_context_ext.dart';
import '../../views/app_border_box.dart';
import '../../views/buttons/app_icon_button.dart';
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
  final CarouselController _carouselController = CarouselController();
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

  String _getAndroidUrl(String projectName) {
    switch (projectName) {
      case 'Groovifi':
        return context.strings.groovifiAndroidUrl;
      case '3Wella':
        return context.strings.threeWellaAndroidUrl;
      case 'Java Interview Questions':
        return context.strings.jiqAndroidUrl;
      case 'Finance Flow':
        return context.strings.financeFlowAndroidUrl;
      default:
        return '';
    }
  }

  String _getIosUrl(String projectName) {
    switch (projectName) {
      case 'Groovifi':
        return context.strings.groovifiIosUrl;
      case '3Wella':
        return context.strings.threeWellaIosUrl;
      default:
        return '';
    }
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

  Widget _buildProjectCard(
    BuildContext context,
    int index,
    ProjectsOverviewPageState state,
  ) {
    return AppBorderBox(
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        hoverColor: context.colorTheme.transparent,
        splashColor: context.colorTheme.transparent,
        onTap: () async {
          log('Go to Details');
          await showDialog(
            context: context,
            builder: (context) {
              return BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Dialog(
                  shadowColor: context.colorTheme.transparent,
                  backgroundColor: context.colorTheme.transparent,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 18,
                                    color: context.colorTheme.mainYellow,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: context.router.pop,
                                icon: const Icon(Icons.close),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          CarouselSlider(
                            carouselController: _carouselController,
                            options: CarouselOptions(
                              height: 400,
                            ),
                            items: state.projects[index].images?.map(
                              (e) {
                                return Image.asset(e, fit: BoxFit.cover);
                              },
                            ).toList(),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 18,
                                      color: context.colorTheme.mainYellow,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () =>
                                      _carouselController.previousPage(),
                                  icon: const Icon(Icons.arrow_back_ios),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 18,
                                      color: context.colorTheme.mainYellow,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () =>
                                      _carouselController.nextPage(),
                                  icon: const Icon(Icons.arrow_forward_ios),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 18,
                                  color: context.colorTheme.mainYellow,
                                ),
                              ],
                            ),
                            child: Text(
                              state.projects[index].description,
                              textAlign: TextAlign.center,
                              style: context.textTheme.mobileSubtitle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...state.projects[index].projectPlatform.map((e) {
                                return Container(
                                  margin: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 18,
                                        color: context.colorTheme.mainYellow,
                                      ),
                                    ],
                                  ),
                                  child: AppIconButton(
                                    () {
                                      final androidUrl = _getAndroidUrl(
                                        state.projects[index].name,
                                      );
                                      final iosUrl = _getIosUrl(
                                        state.projects[index].name,
                                      );

                                      log(
                                        'Go to ${e.getUrl(
                                          androidUrl: androidUrl,
                                          iosUrl: iosUrl,
                                        )}',
                                      );
                                    },
                                    e.getIcon(context),
                                  ),
                                );
                              }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
                    ),
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
