import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF6C63FF);
  static const primaryDark = Color(0xFF5A54D1);
  static const lightBackground = Color(0xFFF5F5F5);

  static Color faded(Color color, [double opacity = 0.2]) => color.withValues(alpha: opacity);

  /// Primary gradient used across the app.
  static const List<Color> primaryGradientColors = [primary, primaryDark];
}
