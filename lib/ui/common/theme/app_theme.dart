import 'package:flutter/material.dart';
import './app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData theme() {
    final theme = ThemeData();
    return theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
      background: AppColors.bgColor,
      primary: AppColors.primaryColor,
    ));
  }
}
