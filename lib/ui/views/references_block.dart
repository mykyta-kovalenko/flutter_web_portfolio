import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../utils/build_context_ext.dart';

class ReferencesBlock extends StatelessWidget {
  const ReferencesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.strings.apparentlyMyColleagues,
          style: context.textTheme.mobileTitle,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.bogdanReference,
          imagePath: Assets.images.bogdan.path,
          name: context.strings.bogdanAksonenko,
          company: context.strings.proAreaDigitalAgency,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.yaroslavReference,
          imagePath: Assets.images.yaroslav.path,
          name: context.strings.yaroslavSerdiuchenko,
          company: context.strings.lineUp,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.anastasiiaReference,
          imagePath: Assets.images.anastasiia.path,
          name: context.strings.anastasiiaChervinska,
          company: context.strings.einDesEin,
        ),
        const SizedBox(height: 20),
        _buildReferenceCard(
          context,
          reference: context.strings.oleksiiReference,
          imagePath: Assets.images.oleksii.path,
          name: context.strings.oleksiiBykov,
          company: context.strings.lineUp,
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
  }) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 4)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              reference,
              style: context.textTheme.mobileBodyText,
            ),
            const SizedBox(height: 16),
            Row(
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
                        style: context.textTheme.mobileSubtitle,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        company,
                        style: context.textTheme.mobileBodyText,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
