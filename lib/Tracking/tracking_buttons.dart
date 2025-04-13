import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class CustomButtonsScreen extends StatefulWidget {
  const CustomButtonsScreen({super.key});

  @override
  State<CustomButtonsScreen> createState() => _CustomButtonsScreenState();
}

class _CustomButtonsScreenState extends State<CustomButtonsScreen> {
  int selectedButtonIndex = -1; // لمتابعة الزر النشط

  // قوائم الأرقام والعناوين والأيقونات لكل زر
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
                if (index > 0)
                  const SizedBox(width: 5), // إضافة مسافة بين الأزرار
                _buildCustomButton(index),
              ],
            );
          }),
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  // دالة لبناء كل زر مخصص
  Widget _buildCustomButton(int index) {
    bool isSelected = index == selectedButtonIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedButtonIndex = index; // تحديد الزر النشط
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: color1),
          color: isSelected ? color1 : Colors.white, // تغيير اللون عند النقر
          borderRadius: BorderRadius.circular(7),
        ),
        height: 20,
        width: 85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numbersList[index], // عرض الرقم الخاص بالزر
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            const SizedBox(width: 1),
            Text(
              titlesList[index], // عرض العنوان الخاص بالزر
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
