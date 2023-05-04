import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_catalogue/logic/models/models.dart';
import 'package:product_catalogue/logic/repositories/product_repository.dart';

final productRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductRepository(),
);

final productsProvider = FutureProvider.autoDispose((ref) {
  final productsRepo = ref.watch(productRepositoryProvider);
  return productsRepo.fetchProducts();
});

final productsByCategoryProvider = FutureProvider.autoDispose
    .family<List<Product>?, String>((ref, category) async {
  final productsResponse = ref.watch(productsProvider);
  final products = productsResponse.asData?.value;
  if (products != null) {
    return products.where((element) => element.category == category).toList();
  }
  return null;
});
