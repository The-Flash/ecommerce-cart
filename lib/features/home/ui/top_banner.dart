import 'package:flutter/material.dart';
import 'package:product_catalogue/ui/common/theme/app_colors.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        gradient: AppColors.bgGradient,
      ),
    );
  }
}
