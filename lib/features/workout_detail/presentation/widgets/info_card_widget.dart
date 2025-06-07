import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';

import 'package:untitled10/utils/constants.dart';

class InfoCardWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final String value;

  const InfoCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsetsGeometry.all(16),
      decoration: AppDecorations.whiteRoundedBoxShadow(),
      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 22),
          Gap(10),
          Text(value, style: AppTextStyles.c16Bold),
          Gap(5),
          Text(title, style: AppTextStyles.c12RegularGrey),
        ],
      ),
    );
  }
}
