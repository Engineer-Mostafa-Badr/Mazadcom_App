import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: color1,
                child: Text(
                  "الفلترة المختارة",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1.0,
                        ),
                        itemCount: 8,
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
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
