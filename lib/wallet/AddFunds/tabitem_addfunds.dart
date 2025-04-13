
import 'package:flutter/material.dart';

class TabItemAddFunds extends StatelessWidget {
  final String title;
  final Icon icon;

  const TabItemAddFunds({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    // الحصول على عرض الشاشة
    final screenWidth = MediaQuery.of(context).size.width;

    // تحديد الحجم المناسب بناءً على عرض الشاشة
    double iconSize = screenWidth * 0.05; // حجم الأيقونة
    double fontSize = screenWidth * 0.035; // حجم النص
    double spacing = screenWidth * 0.02; // المسافة بين الأيقونة والنص

    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: fontSize, // ضبط حجم النص
              fontWeight: FontWeight.bold,
            ),
          ),
         
          SizedBox(width: spacing), // ضبط المسافة
          Icon(
            icon.icon,
            size: iconSize, // ضبط حجم الأيقونة
            color: icon.color,
          ),
        ],
      ),
    );
  }
}
