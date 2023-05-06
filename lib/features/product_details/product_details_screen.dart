import 'package:flutter/material.dart';
import 'package:product_catalogue/features/product_details/ui/pd_app_bar.dart';
import 'package:product_catalogue/logic/models/models.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Color(0xFFFFEDEC),
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: const [
                PdAppBar(),
              ],
            ),
            SizedBox(
              width: 250,
              child: Text(
                product.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
