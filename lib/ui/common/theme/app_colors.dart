import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const LinearGradient bgGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF683DF2),
      Color(0xFF6D57F2),
      Color(0xFF878CFA),
      Color(0xFFC161FC),
    ],
  );

  static const Color grey = Color(0xFF999999);

  static const Color bgColor = Color(0xFFF8F8F9);

  static const Color primaryColor = Color(0xFF6D57F2);
}
