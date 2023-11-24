import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../bloc/resources_page/resources_page_cubit.dart';
import '../../../bloc/resources_page/resources_page_state.dart';
import '../../../enums/resource_category.dart';
import '../../../model/resource.dart';
import '../../../utils/bloc_auto_route_mixin.dart';
import '../../../utils/build_context_ext.dart';
import '../../views/buttons/app_text_button.dart';
import '../../views/page_wrapper.dart';

@RoutePage()
class ResourcesPage extends StatelessWidget
    with BlocAutoRouteMixin<ResourcesPageCubit> {
  const ResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResourcesPageCubit, ResourcesPageState>(
      builder: (context, state) {
        return PageWrapper(
          children: [
            Text(
              'Courses',
              style: context.isDesktop
                  ? context.textTheme.mainTitle
                  : context.textTheme.mobileTitle,
            ),
            const SizedBox(height: 12),
            ...state.resources.where((resource) {
              return resource.resourceCategory == ResourceCategory.courses;
            }).map((resource) {
              return _buildResource(resource, context);
            }),
            Text('Books', style: context.textTheme.mobileTitle),
            const SizedBox(height: 12),
            ...state.resources.where((resource) {
              return resource.resourceCategory == ResourceCategory.books;
            }).map((resource) {
              return _buildResource(resource, context);
            }),
          ],
        );
      },
    );
  }

  Widget _buildResource(Resource resource, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextButton(
          title: resource.name,
          style: context.isDesktop
              ? context.textTheme.mainSubtitle
              : context.textTheme.mobileSubtitle,
          onTap: () => launchUrlString(resource.url),
        ),
        Text(
          resource.description ?? '',
          style: context.isDesktop
              ? context.textTheme.mainBodyText
              : context.textTheme.mobileBodyText,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
