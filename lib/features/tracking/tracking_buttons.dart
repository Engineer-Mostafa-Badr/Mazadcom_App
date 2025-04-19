import '../../core/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class CustomButtonsScreen extends StatefulWidget {
  const CustomButtonsScreen({super.key});

  @override
  State<CustomButtonsScreen> createState() => _CustomButtonsScreenState();
}

class _CustomButtonsScreenState extends State<CustomButtonsScreen> {
  int selectedButtonIndex = -1;

  final List<String> numbersList = ["12", "34", "56", "78"];
  final List<String> titlesList = [
    "المزادات الفائزة",
    "المزادات الخاسرة",
    "المزادات الجارية",
    "المزادات المنتهية"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Row(
              children: [
                if (index > 0) const SizedBox(width: 5),
                _buildCustomButton(index),
              ],
            );
          }),
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget _buildCustomButton(int index) {
    bool isSelected = index == selectedButtonIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedButtonIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: color1),
          color: isSelected ? color1 : Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        height: 20,
        width: 85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numbersList[index],
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            const SizedBox(width: 1),
            Text(
              titlesList[index],
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            const SizedBox(width: 1),
          ],
        ),
      ),
    );
  }
}
