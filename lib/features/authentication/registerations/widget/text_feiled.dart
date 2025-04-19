
import 'package:flutter/material.dart';

Widget buildTextField({
  required String label,
  required TextEditingController controllername,
  required String? Function(String?) validator,
}) {
  return LayoutBuilder(
    builder: (context, constraints) {
      double screenWidth = MediaQuery.of(context).size.width;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04), // نسبة عرض متغيرة
            child: Text(label),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              end: screenWidth * 0.035, // نسبة عرض متغيرة
              start: screenWidth * 0.035,
              bottom: 10,
            ),
            child: TextFormField(
              controller: controllername,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(63, 158, 158, 158),
                contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02), // نسبة عرض متغيرة
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
