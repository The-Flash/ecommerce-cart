import 'package:flutter/material.dart';
import 'package:product_catalogue/router.dart';
import 'package:product_catalogue/ui/common/widgets/custom_error_widget.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          const Expanded(
            child: CustomErrorWidget(),
          ),
          const SizedBox(height: 20),
          const Text(
            "Could not load products",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(ScreenPaths.bootstrap);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text("Reload"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
