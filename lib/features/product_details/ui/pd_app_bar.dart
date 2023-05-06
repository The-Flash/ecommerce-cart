import 'package:flutter/material.dart';
import 'package:product_catalogue/ui/common/theme/app_colors.dart';

class PdAppBar extends StatelessWidget {
  const PdAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const RoundedPdAppBarIcon(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const RoundedPdAppBarIcon(
                  icon: Icon(
                    Icons.favorite_outline,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedPdAppBarIcon extends StatelessWidget {
  final Widget icon;

  const RoundedPdAppBarIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(50)),
      child: icon,
    );
  }
}
