import 'package:flutter/material.dart';

import '../../utils/build_context_ext.dart';

class NavMenuItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const NavMenuItem({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Text(
          title,
          style: !context.isDesktop
              ? context.textTheme.mobileSubtitle
              : context.textTheme.mainSubtitle,
        ),
      ),
    );
  }
}
