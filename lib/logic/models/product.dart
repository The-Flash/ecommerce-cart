import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  @JsonSerializable(explicitToJson: true)
  factory Product({
    required int id,
    @JsonKey(name: "title") required String name,
    required String description,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String brand,
    required String thumbnail,
    required String category,
    required List<String> images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
