import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';
import 'package:untitled10/features/progress/presentation/pages/progress_screen.dart';
import 'package:untitled10/utils/constants.dart';

class TodayTargetCard extends StatelessWidget {
  const TodayTargetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(20),
      decoration: AppDecorations.gradientRoundedBox(),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 10,
        spacing: 20,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Today\'s Target', style: TextStyle(color: Colors.white, fontSize: 16)),
              const Gap(10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.local_fire_department, color: Colors.white, size: 30),
                  Gap(10),
                  Text('485 kcal', style: AppTextStyles.c26Bold),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const ProgressScreen()));
            },
            borderRadius: BorderRadius.circular(12),
            child: Ink(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: AppDecorations.whiteRounded(radius: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.show_chart, color: AppColors.primary, size: 20),
                  Gap(5),
                  Text(
                    'View Progress',
                    style: TextStyle(
                        color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
