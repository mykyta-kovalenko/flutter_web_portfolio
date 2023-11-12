import 'package:flutter/material.dart';

import '../../../utils/build_context_ext.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        textStyle: context.isDesktop
            ? context.textTheme.mainSubtitle
            : context.textTheme.mobileSubtitle,
      ),
      child: Text(title.toUpperCase()),
    );
  }
}
