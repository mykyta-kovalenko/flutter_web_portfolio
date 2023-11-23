import 'dart:developer';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../model/project.dart';
import '../../../../utils/build_context_ext.dart';
import '../../../views/buttons/app_icon_button.dart';

class ProjectDialogView extends StatelessWidget {
  final Project project;
  final CarouselController carouselController;

  const ProjectDialogView({
    super.key,
    required this.project,
    required this.carouselController,
  });

  String _getAndroidUrl(BuildContext context, String projectName) {
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

  String _getIosUrl(BuildContext context, String projectName) {
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
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: AlertDialog(
        title: _buildTitle(context),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 4,
            color: context.colorTheme.secondaryYellow,
          ),
        ),
        shadowColor: context.colorTheme.transparent,
        backgroundColor: context.colorTheme.mainYellow,
        content: _buildContent(context),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Material(
      elevation: 8,
      color: context.colorTheme.secondaryYellow,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                project.logo ?? Assets.images.img4102.path,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                project.name,
                style: context.textTheme.mobileTitle,
              ),
            ),
            IconButton(
              onPressed: context.router.pop,
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 460,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildImageSlider(),
              const SizedBox(height: 16),
              _buildImageControllers(),
              const SizedBox(height: 16),
              Text(
                project.description,
                textAlign: TextAlign.center,
                style: context.textTheme.mobileSubtitle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildStoresLinks(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageSlider() {
    return CarouselSlider(
      carouselController: carouselController,
      options: CarouselOptions(
        height: 440,
        viewportFraction: 1,
      ),
      items: project.images
          ?.map((image) => Image.asset(
                image,
                fit: BoxFit.cover,
              ))
          .toList(),
    );
  }

  Widget _buildImageControllers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: carouselController.previousPage,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(width: 16),
        IconButton(
          onPressed: carouselController.nextPage,
          icon: const Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  Widget _buildStoresLinks(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...project.projectPlatform.map((platform) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: AppIconButton(
              () {
                final androidUrl = _getAndroidUrl(
                  context,
                  project.name,
                );
                final iosUrl = _getIosUrl(
                  context,
                  project.name,
                );

                log(
                  'Go to ${platform.getUrl(
                    androidUrl: androidUrl,
                    iosUrl: iosUrl,
                  )}',
                );
              },
              platform.getIcon(context),
            ),
          );
        }),
      ],
    );
  }
}
