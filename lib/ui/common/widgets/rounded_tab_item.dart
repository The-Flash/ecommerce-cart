import 'package:flutter/material.dart';

class RoundedTabItem extends StatelessWidget {
  final String title;
  final Widget icon;
  final bool isActive;

  final activeColor = const Color(0xFF2D3C53);
  final inActiveColor = const Color(0xFFF2F6FB);

  const RoundedTabItem({
    super.key,
    required this.title,
    required this.icon,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            color: isActive ? activeColor : Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: inActiveColor,
            ),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isActive ? Colors.white : inActiveColor,
                  ),
                  child: icon,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  color: isActive ? Colors.white : null,
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
      ],
    );
  }
}
