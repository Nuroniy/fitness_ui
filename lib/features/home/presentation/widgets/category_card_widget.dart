import 'package:flutter/material.dart';
import 'package:untitled10/common/styles/decorations.dart';
import 'package:untitled10/utils/constants.dart';

class CategoryCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const CategoryCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        width: 80,
        padding: EdgeInsetsGeometry.all(10),
        decoration: AppDecorations.whiteRoundedBoxShadow(),
        child: Column(
          spacing: 8,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: AppDecorations.circularColorAlpha(color),
              child: Icon(icon, color: color, size: 22),
            ),
            Text(title, style: AppTextStyles.c12SemiBold)
          ],
        ),
      ),
    );
  }
}
