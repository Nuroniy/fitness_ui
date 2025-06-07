import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:untitled10/common/widgets/app_constrained_scroll_view.dart';
import 'package:untitled10/features/home/presentation/widgets/category_card_widget.dart';
import  'package:untitled10/features/home/presentation/widgets/today_target_card.dart';
import 'package:untitled10/features/home/presentation/widgets/welcome_header_widget.dart';
import 'package:untitled10/features/home/presentation/widgets/workout_card_widget.dart';

import 'package:untitled10/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.all(20).add(
      EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
    );

    return Scaffold(
      body: AppConstrainedScrollView(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const WelcomeHeaderWidget(),
            const Gap(30),
            const TodayTargetCard(),
            const Gap(30),
            Text('Categories', style: AppTextStyles.c20Bold),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoryCardWidget(title: 'Cardio', icon: Icons.favorite, color: Colors.redAccent),
                CategoryCardWidget(
                    title: 'Strength', icon: Icons.fitness_center, color: Colors.blue),
                CategoryCardWidget(
                    title: 'Yoga', icon: Icons.self_improvement, color: Colors.green),
                CategoryCardWidget(title: 'All', icon: Icons.grid_view, color: Colors.purple),
              ],
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today's Workouts", style: AppTextStyles.c20Bold),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: AppTextStyles.c20Bold.copyWith(color: AppColors.primary),
                  ),
                ),
              ],
            ),
            const Gap(15),
            Column(
              children: const [
                WorkoutCardWidget(
                  title: 'Full Body Workout',
                  subtitle: '45 min - Medium',
                  progress: .68,
                  icon: Icons.fitness_center,
                ),
                Gap(15),
                WorkoutCardWidget(
                  title: 'Upper Body Strength',
                  subtitle: '30 min - Intermediate',
                  progress: .45,
                  icon: Icons.accessibility_new,
                ),
                Gap(15),
                WorkoutCardWidget(
                  title: 'Cardio Blast',
                  subtitle: '45 min - High Intensity',
                  progress: .32,
                  icon: Icons.directions_run,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
