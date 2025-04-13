import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class TabItemHome extends StatelessWidget {
  final String titleofauctions;
  final int num;

  const TabItemHome({
    required this.titleofauctions,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titleofauctions,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 2), 

          num > 0
              ? Container(
                  margin: EdgeInsetsDirectional.all(1),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Center(
                        child: Text(
                          num.toString(),
                          // num > 9 ? "9+" : num.toString(),
                          style: TextStyle(
                            color: color2,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox.shrink(),

          // SizedBox(width: 2), // إضافة مسافة بين الرقم والنص
        ],
      ),
    );
  }
}
