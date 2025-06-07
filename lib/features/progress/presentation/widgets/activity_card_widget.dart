import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';

import 'package:untitled10/utils/constants.dart';

class ActivityCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ActivityCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        padding: EdgeInsetsGeometry.all(15),
        decoration: AppDecorations.whiteRounded(),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: AppDecorations.primaryAlphaRounded(),
              child: Icon(icon, color: AppColors.primary, size: 22),
            ),
            Gap(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.c16Bold),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20),
          ],
        ),
      ),
    );
  }
}
