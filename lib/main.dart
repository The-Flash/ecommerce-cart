import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_catalogue/router.dart';
import 'package:product_catalogue/ui/common/theme/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flash Cart',
      theme: AppTheme.theme(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
