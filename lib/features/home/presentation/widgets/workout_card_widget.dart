import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';
import 'package:untitled10/features/workout_detail/presentation/pages/workout_detail_screen.dart';
import 'package:untitled10/utils/constants.dart';

class WorkoutCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;
  final IconData icon;

  const WorkoutCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const WorkoutDetailScreen()));
      },
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        padding: EdgeInsetsGeometry.all(16),
        decoration: AppDecorations.whiteRoundedBoxShadow(),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: AppDecorations.primaryAlphaRounded(),
              child: Icon(
                icon,
                color: AppColors.primary,
                size: 25,
              ),
            ),
            Gap(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(title, style: AppTextStyles.c16Bold),
                  Text(subtitle, style: AppTextStyles.c13Regular)
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox.square(
                  dimension: 40,
                  child: CircularProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                    strokeWidth: 5,
                  ),
                ),
                Text("${(progress * 100).toStringAsFixed(0)}%", style: AppTextStyles.c11Medium),
              ],
            )
          ],
        ),
      ),
    );
  }
}
