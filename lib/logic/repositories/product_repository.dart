import 'dart:convert';

import 'package:product_catalogue/constants.dart';
import 'package:http/http.dart' as http;
import 'package:product_catalogue/logic/models/product.dart';

class ProductRepository {
  String get baseUrl => kCatalogueUrl;

  Future<List<Product>> fetchProducts() async {
    final url = Uri.parse("$baseUrl?limit=200");
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      List<dynamic> productsBody = responseBody["products"];
      return productsBody
          .map((productJson) => Product.fromJson(productJson))
          .toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}
