import 'package:flutter/material.dart';

import '../../utils/build_context_ext.dart';

class AppBorderBox extends StatelessWidget {
  final Widget child;

  const AppBorderBox({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      shape: BeveledRectangleBorder(
        side: BorderSide(
          width: 2,
          color: context.colorTheme.black,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: context.colorTheme.black,
          ),
        ),
        child: child,
      ),
    );
  }
}
