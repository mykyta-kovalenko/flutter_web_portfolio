import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const AppIconButton(this.onTap, this.iconPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        iconPath,
        width: 36,
        height: 36,
      ),
    );
  }
}
