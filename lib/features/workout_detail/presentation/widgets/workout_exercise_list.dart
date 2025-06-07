import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/features/workout_detail/data/models/exercise_model.dart';
import 'package:untitled10/utils/constants/app_text_styles.dart';
import 'exercise_item_widget.dart';

class WorkoutExerciseList extends StatelessWidget {
  const WorkoutExerciseList({super.key});

  @override
  Widget build(BuildContext context) {
    const List<ExerciseModel> exercises = [
      ExerciseModel(title: 'Jumping', time: '00:45', icon: Icons.accessibility_new),
      ExerciseModel(title: 'Push-ups', time: 'x15', icon: Icons.arrow_downward),
      ExerciseModel(title: 'Squats', time: 'x15', icon: Icons.arrow_downward),
      ExerciseModel(title: 'Plank', time: '00:30', icon: Icons.horizontal_rule),
      ExerciseModel(title: 'Mountain Climbers', time: '00:45', icon: Icons.directions_run),
      ExerciseModel(title: 'Lunges', time: 'x15', icon: Icons.arrow_forward),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Exercises', style: AppTextStyles.c20Bold),
        ),
        const Gap(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: exercises
                .map((e) => Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: ExerciseItemWidget(
                        title: e.title,
                        time: e.time,
                        icon: e.icon,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
