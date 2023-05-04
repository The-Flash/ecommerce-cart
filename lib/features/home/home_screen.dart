import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_catalogue/features/home/ui/headline.dart';
import 'package:product_catalogue/features/home/ui/search_box.dart';
import 'package:product_catalogue/features/home/ui/top_banner.dart';
import 'package:product_catalogue/features/home/ui/top_header_options.dart';
import 'package:product_catalogue/ui/common/theme/app_colors.dart';

import 'ui/product_category_tabs.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: const [
              TopBanner(),
              Positioned(
                top: 50,
                right: 20,
                left: 20,
                child: TopHeaderOptions(),
              ),
              Positioned(
                top: 150,
                left: 20,
                child: Headline(),
              ),
              Positioned(
                bottom: -25,
                left: 0,
                right: 0,
                child: Align(
                  child: SearchBox(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const ProductCategoryTabs(),
        ],
      ),
    );
  }
}
