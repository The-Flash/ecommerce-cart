import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const FrostedContainer({
    super.key,
    required this.child,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 10,
        sigmaY: 10,
      ),
      child: Container(
        color: Colors.white.withOpacity(0.2),
        padding: padding,
        child: child,
      ),
    );
  }
}
