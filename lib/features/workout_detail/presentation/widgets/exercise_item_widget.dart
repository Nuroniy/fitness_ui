import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';
import 'package:untitled10/utils/constants.dart';

class ExerciseItemWidget extends StatelessWidget {
  final String title;
  final String time;
  final IconData icon;

  const ExerciseItemWidget({
    super.key,
    required this.title,
    required this.time,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(15),
      decoration: AppDecorations.whiteRoundedBoxShadow(),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: AppDecorations.primaryAlphaRounded(),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 22,
            ),
          ),
          Gap(10),
          Expanded(child: Text(title, style: AppTextStyles.c16Bold)),
          Container(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
            decoration: AppDecorations.lightGreyRounded(),
            child: Text(
              time,
              style: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
