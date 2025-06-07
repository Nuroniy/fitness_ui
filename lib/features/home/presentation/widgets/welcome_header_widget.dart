import 'package:flutter/material.dart';
import 'package:untitled10/utils/constants.dart';
class WelcomeHeaderWidget extends StatelessWidget {
  const WelcomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back,", style: TextStyle(fontSize: 16, color: Colors.grey[600])),
            Text("Dear Pro", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
        IconButton.filled(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: AppColors.faded(AppColors.primary),
            fixedSize: Size(50, 50),
          ),
          icon: Icon(Icons.person, color: AppColors.primary, size: 30),
        ),
      ],
    );
  }
}
