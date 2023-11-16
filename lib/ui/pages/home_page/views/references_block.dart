import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/build_context_ext.dart';
import '../../../views/buttons/app_text_button.dart';

class ReferencesBlock extends StatelessWidget {
  const ReferencesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop) {
      return _buildNonMobileReferences(context);
    }
    return _buildMobileReferences(context);
  }

  Widget _buildNonMobileReferences(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.apparentlyMyColleagues,
          style: context.isDesktop
              ? context.textTheme.mainTitle
              : context.textTheme.mobileTitle,
        ),
        const SizedBox(height: 20),
        StaggeredGrid.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          children: [
            _buildReferenceCard(
              context,
              reference: context.strings.bogdanReference,
              imagePath: Assets.images.bogdan.path,
              name: context.strings.bogdanAksonenko,
              company: context.strings.proAreaDigitalAgency,
              companyUrl: context.strings.urlProArea,
            ),
            const SizedBox(height: 20),
            _buildReferenceCard(
              context,
              reference: context.strings.yaroslavReference,
              imagePath: Assets.images.yaroslav.path,
              name: context.strings.yaroslavSerdiuchenko,
              company: context.strings.lineUp,
              companyUrl: context.strings.urlLineUp,
            ),
            const SizedBox(height: 20),
            _buildReferenceCard(
              context,
              reference: context.strings.anastasiiaReference,
              imagePath: Assets.images.anastasiia.path,
              name: context.strings.anastasiiaChervinska,
              company: context.strings.einDesEin,
              companyUrl: context.strings.urlEinDesEin,
            ),
            const SizedBox(height: 20),
            _buildReferenceCard(
              context,
              reference: context.strings.oleksiiReference,
              imagePath: Assets.images.oleksii.path,
              name: context.strings.oleksiiBykov,
              company: context.strings.lineUp,
              companyUrl: context.strings.urlLineUp,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileReferences(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.apparentlyMyColleagues,
          style: context.isDesktop
              ? context.textTheme.mainTitle
              : context.textTheme.mobileTitle,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.bogdanReference,
          imagePath: Assets.images.bogdan.path,
          name: context.strings.bogdanAksonenko,
          company: context.strings.proAreaDigitalAgency,
          companyUrl: context.strings.urlProArea,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.yaroslavReference,
          imagePath: Assets.images.yaroslav.path,
          name: context.strings.yaroslavSerdiuchenko,
          company: context.strings.lineUp,
          companyUrl: context.strings.urlLineUp,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.anastasiiaReference,
          imagePath: Assets.images.anastasiia.path,
          name: context.strings.anastasiiaChervinska,
          company: context.strings.einDesEin,
          companyUrl: context.strings.urlEinDesEin,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.oleksiiReference,
          imagePath: Assets.images.oleksii.path,
          name: context.strings.oleksiiBykov,
          company: context.strings.lineUp,
          companyUrl: context.strings.urlLineUp,
        ),
      ],
    );
  }

  Widget _buildReferenceCard(
    BuildContext context, {
    required String reference,
    required String imagePath,
    required String name,
    required String company,
    required String companyUrl,
  }) {
    final isDesktop = context.isDesktop;
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 4)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              reference,
              style: isDesktop
                  ? context.textTheme.mainBodyText
                  : context.textTheme.mobileBodyText,
            ),
            const SizedBox(height: 16),
            _buildColleagueTile(
              context,
              isDesktop,
              name: name,
              imagePath: imagePath,
              company: company,
              companyUrl: companyUrl,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColleagueTile(
    BuildContext context,
    bool isDesktop, {
    required String name,
    required String imagePath,
    required String company,
    required String companyUrl,
  }) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: context.colorTheme.secondaryYellow,
            ),
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(48),
            child: Image.asset(
              imagePath,
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: isDesktop
                    ? context.textTheme.mainSubtitle
                    : context.textTheme.mobileSubtitle,
              ),
              const SizedBox(height: 4),
              AppTextButton(
                onTap: () => launchUrlString(companyUrl),
                title: company,
                style: isDesktop
                    ? context.textTheme.mainBodyText
                    : context.textTheme.mobileBodyText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
