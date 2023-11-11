import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';
import '../../utils/build_context_ext.dart';

class ContactBlock extends StatelessWidget {
  const ContactBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            context.strings.getInTouch,
            style: context.textTheme.mobileTitle,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16),
            textStyle: context.textTheme.mobileSubtitle,
            backgroundColor: context.colorTheme.black.withOpacity(.6),
          ),
          child: Text(context.strings.letsChat.toUpperCase()),
        ),
        const SizedBox(height: 20),
        Text(
          context.strings.dropMeEmail,
          textAlign: TextAlign.center,
          style: context.textTheme.mobileBodyText.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        _buildSocialMediaLinks(),
      ],
    );
  }

  Widget _buildSocialMediaLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.icons.icons8Linkedin,
          width: 36,
          height: 36,
        ),
        const SizedBox(width: 12),
        SvgPicture.asset(
          Assets.icons.icons8Github,
          width: 36,
          height: 36,
        ),
        const SizedBox(width: 12),
        SvgPicture.asset(
          Assets.icons.icons8Instagram,
          width: 36,
          height: 36,
        ),
      ],
    );
  }
}
