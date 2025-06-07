import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:untitled10/utils/constants.dart';

class WorkoutHeader extends StatelessWidget {
  const WorkoutHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.primaryGradientColors),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.fitness_center, color: Colors.white, size: 60),
          Gap(15),
          Text("Full Body Workout", style: AppTextStyles.c24BoldWhite),
          Gap(10),
          Text("45 min - Medium - 350 kcal", style: AppTextStyles.c16RegularWhiteOpacity),
        ],
      ),
    );
  }
}
