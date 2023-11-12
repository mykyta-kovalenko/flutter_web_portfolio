import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../utils/build_context_ext.dart';

class GreetingBlock extends StatelessWidget {
  const GreetingBlock({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop) {
      return const _NonMobileGreeting();
    }

    return const _MobileGreeting();
  }
}

// Non-mobile greeting block, includes desktop and tablet.
class _NonMobileGreeting extends StatelessWidget {
  const _NonMobileGreeting();

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Container(
                width: mq.size.width * 0.24,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFefdf1a), width: 4),
                ),
                child: AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Image.asset(
                    Assets.images.img4102.path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(width: mq.size.width * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.strings.heyImMykyta,
                  style: context.textTheme.mainTitle,
                ),
                const SizedBox(height: 20),
                Text(
                  context.strings.aMobileEngineer,
                  style: context.textTheme.mainSubtitle,
                ),
                const SizedBox(height: 12),
                Text(
                  context.strings.iBuildApps,
                  style: context.textTheme.mainSubtitle,
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.strings.commercialProjects,
                      style: context.textTheme.mobileSubtitle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      context.strings.workingHours,
                      style: context.textTheme.mobileSubtitle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      context.strings.technologyStack,
                      style: context.textTheme.mobileSubtitle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    splashFactory: NoSplash.splashFactory,
                    textStyle: context.textTheme.mainSubtitle,
                    backgroundColor: context.colorTheme.black.withOpacity(.6),
                  ),
                  child: Text(context.strings.getResume.toUpperCase()),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _MobileGreeting extends StatelessWidget {
  const _MobileGreeting();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.heyImMykyta,
          style: context.textTheme.mobileTitle,
        ),
        const SizedBox(height: 20),
        Text(
          context.strings.aMobileEngineer,
          style: context.textTheme.mobileSubtitle,
        ),
        const SizedBox(height: 12),
        Text(
          context.strings.iBuildApps,
          style: context.textTheme.mobileSubtitle,
        ),
        const SizedBox(height: 20),
        _buildStatisticsRow(context),
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.center,
          child: _buildResumeButton(context),
        ),
        const SizedBox(height: 24),
        //TODO: Adjust image look.
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFefdf1a), width: 4),
          ),
          child: Image.asset(
            Assets.images.img4102.path,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildStatisticsRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            context.strings.commercialProjects,
            style: context.textTheme.mobileSubtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            context.strings.workingHours,
            style: context.textTheme.mobileSubtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            context.strings.technologyStack,
            style: context.textTheme.mobileSubtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResumeButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        splashFactory: NoSplash.splashFactory,
        textStyle: context.textTheme.mobileSubtitle,
        backgroundColor: context.colorTheme.black.withOpacity(.6),
      ),
      child: Text(context.strings.getResume.toUpperCase()),
    );
  }
}
