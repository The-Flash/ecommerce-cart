import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_catalogue/features/home/models/product_category_tab_item.dart';
import 'package:product_catalogue/features/home/state/product_category_tab_index.dart';
import 'package:product_catalogue/features/product_grid/widgets/product_card.dart';
import 'package:product_catalogue/logic/providers/providers.dart';
import 'package:product_catalogue/ui/common/widgets/custom_error_widget.dart';

class ProductGrid extends ConsumerWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategoryIndex = ref.watch(categoryTabIndexProvider);
    final productCategoryTabItem = tabItems[selectedCategoryIndex];
    final productsResponse =
        ref.watch(productsByCategoryProvider(productCategoryTabItem.queryKey));

    return productsResponse.when(data: (products) {
      if (products == null) {
        return const SizedBox.shrink();
      }
      return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProductCard(
              product: products[index],
            );
          },
          childCount: products.length,
        ),
      );
    }, error: (err, stack) {
      return const SliverToBoxAdapter(
        child: CustomErrorWidget(),
      );
    }, loading: () {
      return const SliverToBoxAdapter(
        child: CircularProgressIndicator(),
      );
    });
  }
}
