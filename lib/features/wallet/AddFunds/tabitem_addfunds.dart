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
    final screenWidth = MediaQuery.of(context).size.width;

    double iconSize = screenWidth * 0.05;
    double fontSize = screenWidth * 0.035;
    double spacing = screenWidth * 0.02;

    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: spacing),
          Icon(
            icon.icon,
            size: iconSize,
            color: icon.color,
          ),
        ],
      ),
    );
  }
}
