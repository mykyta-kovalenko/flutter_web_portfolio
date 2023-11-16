import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/build_context_ext.dart';
import '../../../views/buttons/app_button.dart';
import '../../../views/buttons/app_icon_button.dart';
import '../../../views/buttons/app_text_button.dart';

class ContactBlock extends StatelessWidget {
  const ContactBlock({super.key});

  void _onLetsChatTap(BuildContext context) {
    launchUrlString(context.strings.urlContactInformation);
  }

  void _onEmailTap(BuildContext context) {
    launchUrlString('mailto:${context.strings.email}');
  }

  void _onLinkedInTap(BuildContext context) {
    launchUrlString(context.strings.urlLinkedIn);
  }

  void _onGitHubTap(BuildContext context) {
    launchUrlString(context.strings.urlGitHub);
  }

  void _onInstagramTap(BuildContext context) {
    launchUrlString(context.strings.urlInstagram);
  }

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
          onPressed: () => _onLetsChatTap(context),
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
          onTap: () => _onEmailTap(context),
          title: context.strings.email,
          style: isDesktop
              ? context.textTheme.mainBodyText.copyWith(
                  fontWeight: FontWeight.bold,
                )
              : context.textTheme.mobileBodyText.copyWith(
                  fontWeight: FontWeight.bold,
                ),
        ),
        const SizedBox(height: 36),
        _buildSocialMediaLinks(context),
      ],
    );
  }

  Widget _buildSocialMediaLinks(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIconButton(
          () => _onLinkedInTap(context),
          Assets.icons.icons8Linkedin,
        ),
        const SizedBox(width: 12),
        AppIconButton(
          () => _onGitHubTap(context),
          Assets.icons.icons8Github,
        ),
        const SizedBox(width: 12),
        AppIconButton(
          () => _onInstagramTap(context),
          Assets.icons.icons8Instagram,
        ),
      ],
    );
  }
}
