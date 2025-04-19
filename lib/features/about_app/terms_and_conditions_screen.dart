import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBarlog(),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7), color: color2),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Row(
                    spacing: 3,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "الشروط و الأحكام",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.description,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  '1. الشروط العامة:\n\nفي هذا القسم سيتم شرح الشروط العامة التي يجب على المستخدمين اتباعها...',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  '2. شروط الاستخدام:\n\nاستخدام هذه الخدمة يخضع للشروط التالية...',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  '3. حقوق الملكية الفكرية:\n\nجميع المحتويات الموجودة على الموقع هي ملكية فكرية ...',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
