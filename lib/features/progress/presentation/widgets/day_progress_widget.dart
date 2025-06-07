import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';

class DayProgressWidget extends StatelessWidget {
  final String day;
  final double progress;
  final bool isCompleted;

  const DayProgressWidget({
    super.key,
    required this.day,
    required this.progress,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Container(
          height: 100,
          width: 25,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: .2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: progress * 100,
                width: 25,
                decoration: AppDecorations.whiteRounded(),
              )
            ],
          ),
        ),
        Gap(5),
        Icon(
          isCompleted ? Icons.check_circle : Icons.circle_outlined,
          color: Colors.white,
          size: 16,
        )
      ],
    );
  }
}
