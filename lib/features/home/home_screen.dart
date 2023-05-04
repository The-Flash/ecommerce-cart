import 'package:flutter/material.dart';
import 'package:product_catalogue/features/home/ui/home_app_bar.dart';
import 'package:product_catalogue/features/product_grid/product_grid.dart';

import 'ui/product_category_tabs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HomeAppBar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverAppBar(
            elevation: 0,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: SafeArea(
              child: ProductCategoryTabs(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            sliver: ProductGrid(),
          ),
        ],
      ),
    );
  }
}
