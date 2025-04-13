import 'package:flutter/material.dart';

class CustomTextEditing extends StatelessWidget {
  final String hintText; // النص التلميحي
  final IconData icon; // الأيقونة
  final TextEditingController controller; // المتحكم بالنص

  CustomTextEditing({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            prefixIcon: Icon(icon,),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'من فضلك ادخل $hintText'; // رسالة التحذير حسب النص التلميحي
            }
            return null;
          },
        ),
      ),
    );
  }
}
