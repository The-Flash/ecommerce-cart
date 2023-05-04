import 'package:flutter/material.dart';

class ProductCategoryTabItem {
  final String text;
  final String? queryKey;
  final Widget icon;

  const ProductCategoryTabItem({
    required this.text,
    this.queryKey,
    required this.icon,
  });
}

const double kIconSize = 15;

List<ProductCategoryTabItem> tabItems = [
  const ProductCategoryTabItem(
    text: "All",
    queryKey: null,
    icon: Icon(
      Icons.grid_view,
      size: kIconSize,
    ),
  ),
  const ProductCategoryTabItem(
    text: "Laptops",
    queryKey: "laptops",
    icon: Icon(
      Icons.grid_view,
      size: kIconSize,
    ),
  ),
  const ProductCategoryTabItem(
    text: "Furniture",
    queryKey: "furniture",
    icon: Icon(
      Icons.chair,
      size: kIconSize,
    ),
  ),
  const ProductCategoryTabItem(
    text: "Smartphones",
    queryKey: "smartphones",
    icon: Icon(
      Icons.phone_android,
      size: kIconSize,
    ),
  ),
  const ProductCategoryTabItem(
    text: "Groceries",
    queryKey: "groceries",
    icon: Icon(
      Icons.local_grocery_store,
      size: kIconSize,
    ),
  ),
];
