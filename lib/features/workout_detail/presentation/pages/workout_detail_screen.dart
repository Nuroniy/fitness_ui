import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/widgets/app_constrained_scroll_view.dart';
import 'package:untitled10/features/workout_detail/presentation/widgets/workout_about_section.dart';
import 'package:untitled10/features/workout_detail/presentation/widgets/workout_bottom_bar.dart';
import 'package:untitled10/features/workout_detail/presentation/widgets/workout_exercise_list.dart';
import 'package:untitled10/features/workout_detail/presentation/widgets/workout_header.dart';
import 'package:untitled10/features/workout_detail/presentation/widgets/workout_info_cards_row.dart';
import 'package:untitled10/utils/constants.dart';

class WorkoutDetailScreen extends StatelessWidget {

  const WorkoutDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Workout Detail', style: AppTextStyles.cBold),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))],
      ),
      body: AppConstrainedScrollView(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WorkoutHeader(),
            WorkoutInfoCardsRow(),
            Gap(10),
            WorkoutAboutSection(),
            Gap(30),
            WorkoutExerciseList(),
          ],
        ),
      ),
      bottomNavigationBar: WorkoutBottomBar(),
    );
  }
}
