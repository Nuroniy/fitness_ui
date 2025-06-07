import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';
import 'package:untitled10/utils/constants/app_text_styles.dart';

class StatCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  final Color color;

  const StatCardWidget({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsetsGeometry.all(12),
      decoration: AppDecorations.whiteRounded(),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: AppDecorations.circularColorAlpha(color),
            child: Icon(icon, color: color, size: 22),
          ),
          Gap(10),
          Text(value, style: AppTextStyles.c16Bold),
          Gap(5),
          Text(title, style: AppTextStyles.c12RegularGrey),
        ],
      ),
    );
  }
}
