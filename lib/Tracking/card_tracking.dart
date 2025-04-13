import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class CardTracking extends StatelessWidget {
  const CardTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              height: 121,
              width: 390,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(124, 158, 158, 158),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("1-"),
                        Text(
                          "فئة المزاد",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(" / "),
                        Text(
                          "اسم المزاد",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(" / "),
                        Text(
                          "رقم المزاد",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(" / "),
                        Text(
                          "اسم العميل",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                                border: Border.all(
                                    color: Colors.redAccent, width: 2)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "مكتمل",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Text(
                                  "19/4/2025",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "(03:40 PM)",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assetss/arrow.svg",
                                height: 7,
                                width: 7,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                    border: Border.all(
                                        color: Colors.greenAccent, width: 2)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "دفوعات العميل",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Text(
                                  "19/4/2025",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "(03:40 PM)",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assetss/arrow.svg",
                                height: 7,
                                width: 7,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                    border: Border.all(
                                        color: Colors.greenAccent, width: 2)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "موافقة العميل",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Text(
                                  "19/4/2025",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "(03:40 PM)",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                             
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assetss/arrow.svg",
                                height: 7,
                                width: 7,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                    border: Border.all(
                                        color: Colors.greenAccent, width: 2)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "نهاية المزاد",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Text(
                                  "19/4/2025",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "(03:40 PM)",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green,
                                border: Border.all(
                                    color: Colors.greenAccent, width: 2)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "بداية المزاد",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Text(
                                  "19 /4/ 2025",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "(03:40 PM)",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green,
                                border: Border.all(
                                    color: Colors.greenAccent, width: 2)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "التسجيل",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Text(
                                  "19/4/2025",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "(03:40 PM)",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green,
                                border: Border.all(
                                    color: Colors.greenAccent, width: 2)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "زيارة الموقع",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Text(
                                  "19/4/2025",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "(03:40 PM)",
                                  style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
