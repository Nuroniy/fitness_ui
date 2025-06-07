import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled10/common/styles/decorations.dart';
import 'package:untitled10/common/widgets/app_constrained_scroll_view.dart';
import 'package:untitled10/features/progress/presentation/widgets/activity_card_widget.dart';
import 'package:untitled10/features/progress/presentation/widgets/day_progress_widget.dart';
import 'package:untitled10/features/progress/presentation/widgets/stat_card_widget.dart';
import 'package:untitled10/utils/constants.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Progress', style: AppTextStyles.cBold),
        actions: [
          IconButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime.now(),
                );
              },
              icon: Icon(Icons.calendar_today_rounded)),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            position: PopupMenuPosition.under,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            itemBuilder: (_) => [
              PopupMenuItem(value: 'today', child: Text('Today')),
              PopupMenuItem(value: 'week', child: Text('Week')),
            ],
          )
        ],
      ),
      body: AppConstrainedScrollView(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Stats
            Container(
              padding: EdgeInsetsGeometry.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: AppColors.primaryGradientColors,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: AppDecorations.shadowDefault2,
              ),
              child: Column(
                children: [
                  /// Stats Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('This Week', style: AppTextStyles.c16RegularWhiteOpacity),
                      Text(
                        'May 1 - May 7',
                        style: TextStyle(fontSize: 14, color: Colors.white.withValues(alpha: .8)),
                      ),
                    ],
                  ),
                  Gap(10),

                  /// Days Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DayProgressWidget(day: 'M', progress: 0.5, isCompleted: true),
                      DayProgressWidget(day: 'T', progress: 0.67, isCompleted: true),
                      DayProgressWidget(day: 'W', progress: 0.82, isCompleted: true),
                      DayProgressWidget(day: 'T', progress: 0.53, isCompleted: true),
                      DayProgressWidget(day: 'F', progress: 0.72, isCompleted: false),
                      DayProgressWidget(day: 'S', progress: 0.61, isCompleted: false),
                      DayProgressWidget(day: 'S', progress: 0.48, isCompleted: false),
                    ],
                  ),
                  Gap(25),

                  /// Stats Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatCardWidget(
                        title: 'Workouts',
                        value: '16',
                        icon: Icons.fitness_center,
                        color: Colors.amber,
                      ),
                      StatCardWidget(
                        title: 'Calories',
                        value: '1,850',
                        icon: Icons.local_fire_department,
                        color: Colors.redAccent,
                      ),
                      StatCardWidget(
                        title: 'Minute',
                        value: '268',
                        icon: Icons.timer,
                        color: Colors.green,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(30),
            Text("Activity History", style: AppTextStyles.c20Bold),
            Gap(15),

            /// Activity History
            Column(
              spacing: 16,
              children: [
                ActivityCardWidget(
                  title: 'Full Body Workout',
                  subtitle: 'Today - 45 min . 320 kcal',
                  icon: Icons.fitness_center,
                ),
                ActivityCardWidget(
                  title: 'Morning Run',
                  subtitle: 'Yesterday - 32 min . 280 kcal',
                  icon: Icons.directions_run,
                ),
                ActivityCardWidget(
                  title: 'Yoga Session',
                  subtitle: 'May 2, 2025 - 28 min . 150 kcal',
                  icon: Icons.self_improvement,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
