import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryTabIndexProvider =
    StateNotifierProvider<ProductCategoryTabIndexController, int>(
  (ref) => ProductCategoryTabIndexController(0),
);

class ProductCategoryTabIndexController extends StateNotifier<int> {
  ProductCategoryTabIndexController(super.state);

  void setActiveTab(int value) {
    state = value;
  }
}
