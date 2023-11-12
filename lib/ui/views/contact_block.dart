import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';
import '../../utils/build_context_ext.dart';
import 'buttons/app_button.dart';
import 'buttons/app_text_button.dart';

class ContactBlock extends StatelessWidget {
  const ContactBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDesktop;
    return Column(
      children: [
        Align(
          alignment: isDesktop ? Alignment.center : Alignment.centerLeft,
          child: Text(
            context.strings.getInTouch,
            style: isDesktop
                ? context.textTheme.mainTitle
                : context.textTheme.mobileTitle,
          ),
        ),
        const SizedBox(height: 20),
        AppButton(
          onPressed: () {},
          title: context.strings.letsChat,
        ),
        const SizedBox(height: 20),
        Text(
          context.strings.dropMeEmailAt,
          textAlign: TextAlign.center,
          style: isDesktop
              ? context.textTheme.mainBodyText.copyWith(
                  fontWeight: FontWeight.bold,
                )
              : context.textTheme.mobileBodyText.copyWith(
                  fontWeight: FontWeight.bold,
                ),
        ),
        AppTextButton(
          onTap: () {},
          title: context.strings.email,
          style: isDesktop
              ? context.textTheme.mainBodyText.copyWith(
                  fontWeight: FontWeight.bold,
                )
              : context.textTheme.mobileBodyText.copyWith(
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
