import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: const Text(
        "Find the best products for your setup!",
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      ),
    );
  }
}
