import 'package:flutter/material.dart';
class TabItemRegisterforauctions extends StatelessWidget {
  final String title;
  final Icon icon;

  const TabItemRegisterforauctions({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 2),
          Flexible( // يجعل النص يتقلص إذا كانت المساحة ضيقة
            child: Text(
              title,
              overflow: TextOverflow.ellipsis, // النص يظهر بحجم مناسب أو بــ ...
              maxLines: 1, // يضمن بقاء النص في سطر واحد
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}