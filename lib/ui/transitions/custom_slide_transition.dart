import 'package:flutter/material.dart';

class CustomSlideTransition extends StatefulWidget {
  final Widget child;
  const CustomSlideTransition({
    super.key,
    required this.child,
  });

  @override
  State<CustomSlideTransition> createState() => _CustomSlideTransitionState();
}

class _CustomSlideTransitionState extends State<CustomSlideTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    _animation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0, 0),
    ).animate(_animationController);

    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
