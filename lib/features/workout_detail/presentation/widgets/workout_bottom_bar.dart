import 'package:flutter/material.dart';
import 'package:untitled10/common/styles/decorations.dart';
import 'package:untitled10/utils/constants.dart';

class WorkoutBottomBar extends StatelessWidget {
  const WorkoutBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10).copyWith(bottom: 20),
      decoration: AppDecorations.whiteBoxShadow,
      child: Row(
        spacing: 15,
        children: [
          IconButton.filledTonal(
            style: IconButton.styleFrom(
              fixedSize: Size.square(55),
              backgroundColor: AppColors.primary.withValues(alpha: .2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.play_arrow_rounded,
              color: AppColors.primary,
              size: 30,
            ),
          ),
          Expanded(
            child: FilledButton(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                fixedSize: Size.fromHeight(55),
                backgroundColor: AppColors.primary,
                textStyle: AppTextStyles.c16Bold,
              ),
              onPressed: () {},
              child: Text('Start Workout'),
            ),
          ),
        ],
      ),
    );
  }
}
