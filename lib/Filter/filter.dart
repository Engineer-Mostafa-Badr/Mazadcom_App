import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
            children: [
              SizedBox(height: 20,),
              Center(

                child: Container(
                  color: color1,
                  child: Text("الفلترة المختارة", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                ),
              ),
              Container(child:Column(children: [
                
                Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة في الشبكة
            crossAxisSpacing: 10, // المسافة الأفقية بين البطاقات
            mainAxisSpacing: 10, // المسافة العمودية بين البطاقات
            childAspectRatio: 1.0, // نسبة العرض إلى الارتفاع لكل بطاقة
          ),
          itemCount: 8, // عدد البطاقات في الشبكة
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 40,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'بطاقة رقم ${index + 1}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );}))
              ],),),
          
            ],
          ),
        ),
     
    );
  }
}
