import 'package:flutter/material.dart';
import 'package:untitled10/features/workout_detail/presentation/widgets/info_card_widget.dart';

class WorkoutInfoCardsRow extends StatelessWidget {
  const WorkoutInfoCardsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InfoCardWidget(
            title: "Exercises",
            icon: Icons.fitness_center,
            value: "12",
          ),
          InfoCardWidget(
            title: "Equipment",
            icon: Icons.sports_handball,
            value: "Minimal",
          ),
          InfoCardWidget(
            title: "Level",
            icon: Icons.trending_up,
            value: "Medium",
          ),
        ],
      ),
    );
  }
}
