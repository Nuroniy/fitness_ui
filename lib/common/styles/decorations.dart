import 'package:flutter/material.dart';
import 'package:untitled10/utils/constants/app_colors.dart';

class AppDecorations {
  AppDecorations._();

  static List<BoxShadow> shadowDefault = <BoxShadow>[
    BoxShadow(blurRadius: 10, spreadRadius: 2, color: AppColors.faded(Colors.grey))
  ];

  static List<BoxShadow> shadowDefault2 = <BoxShadow>[
    BoxShadow(
      color: AppColors.faded(AppColors.primary, 0.3),
      blurRadius: 15,
      offset: Offset(0, 10),
    )
  ];
  static BoxDecoration whiteBoxShadow = BoxDecoration(
    color: Colors.white,
    boxShadow: shadowDefault,
  );

  static BoxDecoration whiteRoundedBoxShadow({double radius = 15}) => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: shadowDefault,
      );

  static BoxDecoration whiteRounded({double radius = 15}) => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      );

  static BoxDecoration lightGreyRounded({double radius = 12}) => BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(radius),
      );

  static BoxDecoration primaryAlphaRounded({double radius = 12, double alpha = 0.2}) =>
      BoxDecoration(
        color: AppColors.primary.withValues(alpha: alpha),
        borderRadius: BorderRadius.circular(radius),
      );

  static BoxDecoration circularColorAlpha(Color color, {double alpha = 0.2}) => BoxDecoration(
        shape: BoxShape.circle,
        color: color.withValues(alpha: alpha),
      );

  static BoxDecoration gradientRoundedBox({
    double radius = 20,
    List<Color>? colors,
    List<BoxShadow>? shadows,
  }) =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors ?? AppColors.primaryGradientColors,
        ),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: shadows ?? shadowDefault2,
      );
}
