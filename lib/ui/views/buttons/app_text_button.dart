import 'package:flutter/material.dart';

import '../../../utils/build_context_ext.dart';

class AppTextButton extends StatefulWidget {
  final String title;
  final TextStyle style;
  final VoidCallback onTap;

  const AppTextButton({
    super.key,
    required this.title,
    required this.style,
    required this.onTap,
  });

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: AnimatedOpacity(
            opacity: isHover ? 0 : 1,
            duration: const Duration(milliseconds: 300),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    context.colorTheme.textButtonRed.withOpacity(.34),
                    context.colorTheme.textButtonRed.withOpacity(.08),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: widget.onTap,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Text(
            widget.title,
            style: widget.style,
          ),
        ),
      ],
    );
  }
}
