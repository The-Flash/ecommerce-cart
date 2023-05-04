import 'package:flutter/material.dart';
import 'package:product_catalogue/ui/common/widgets/frosted_container.dart';

class TopHeaderOptions extends StatelessWidget {
  const TopHeaderOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Hi, there👋",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: const [
            FrostedIcon(
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            FrostedIcon(
              child: Icon(
                Icons.favorite_outline_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FrostedIcon extends StatelessWidget {
  final Widget child;
  const FrostedIcon({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FrostedContainer(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
