import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product_catalogue/features/bootstrap/bootstrap_screen.dart';
import 'package:product_catalogue/features/error/error_screen.dart';
import 'package:product_catalogue/features/home/home_screen.dart';

class ScreenPaths {
  static String bootstrap = "/bootstrap";
  static String home = "/";
  static String error = "/error";
}

final router = GoRouter(
  initialLocation: ScreenPaths.bootstrap,
  routes: [
    GoRoute(
      path: ScreenPaths.bootstrap,
      builder: (context, state) => const BootstrapScreen(),
    ),
    GoRoute(
      path: ScreenPaths.error,
      builder: (context, state) => const ErrorScreen(),
    ),
    GoRoute(
      path: ScreenPaths.home,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        transitionDuration: kThemeAnimationDuration,
        child: HomeScreen(
          key: state.pageKey,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: const Offset(0, 0),
              ),
            ),
            child: child,
          );
        },
      ),
    ),
  ],
);
