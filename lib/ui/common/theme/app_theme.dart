import 'package:flutter/material.dart';
import './app_colors.dart';

class AppTheme {
  static ThemeData theme() {
    final theme = ThemeData();
    return theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
      primary: AppColors.primaryColor,
    ));
  }
}
