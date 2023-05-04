import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductListScreen extends ConsumerWidget {
  final String? category;
  const ProductListScreen({
    super.key,
    this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List<Product> products = [];
    // if (category == null) {
    //   ref.watch(productsProvider).when(
    //       data: (data) {
    //         products = data;
    //       },
    //       error: (err, stack) {},
    //       loading: () {});
    // } else {
    //   ref.watch(productsByCategoryProvider(category!)).when(
    //       data: (data) {
    //         if (data != null) {
    //           products = data;
    //         }
    //       },
    //       error: (err, stack) {},
    //       loading: () {});
    // }
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Text("index");
      },
      itemCount: 3,
    );
  }
}
