import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static final TextStyle c20Bold = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static final TextStyle c26Bold =
      TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold);
  static final TextStyle c16Bold = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static final TextStyle c12RegularGrey = TextStyle(fontSize: 12, color: Colors.grey[600]);
  static final TextStyle c12SemiBold = TextStyle(fontWeight: FontWeight.w600, fontSize: 12);
  static final TextStyle c11Medium = TextStyle(fontSize: 11, fontWeight: FontWeight.w500);
  static final TextStyle c13Regular = TextStyle(color: Colors.grey[600], fontSize: 13);
  static final TextStyle c16RegularWhiteOpacity = TextStyle(
    fontSize: 16,
    color: Colors.white.withValues(alpha: .8),
  );

  static final TextStyle c24BoldWhite = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

//   TextStyle(fontWeight: FontWeight.bold)

  static final TextStyle cBold = TextStyle(fontWeight: FontWeight.bold);
}
