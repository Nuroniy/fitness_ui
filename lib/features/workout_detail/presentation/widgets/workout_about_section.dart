import 'package:flutter/material.dart';
import 'package:untitled10/utils/constants/app_text_styles.dart';

class WorkoutAboutSection extends StatelessWidget {
  const WorkoutAboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text('About', style: AppTextStyles.c20Bold),
          Text(
            'This is full body workout to tone up your body and burn fat. It is a 45 min workout that is perfect for anyone who wants to get in shape. It is a great way to workout at home or at the gym.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
