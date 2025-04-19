import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardDeisgn extends StatelessWidget {
  const CardDeisgn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          spacing: 8,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 200,
              width: 355,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(37, 158, 158, 158)),
              child: Column(
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "١- فئة المزاد  | اسم المزاد | رقم المزاد | اسم العميل",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "نهاية المزاد",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrow.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: " بداية المزاد",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrow.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "التسجيل",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrowright.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "زيارة الموقع",
                            dateText: "15/12/2025 (10:30 am)",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 34,
                        ),
                        child: SvgPicture.asset(
                          "assets/downarrow.svg",
                          height: 15,
                          width: 15,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: "موافقة العميل",
                          dateText: "N/A",
                        ),
                        SvgPicture.asset(
                          "assets/arrowlefts.svg",
                          height: 10,
                          width: 10,
                        ),
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: " دفوعات المزاد",
                          dateText: "N/A",
                        ),
                        SvgPicture.asset(
                          "assets/arrowlefts.svg",
                          height: 10,
                          width: 10,
                        ),
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: "التسجيل",
                          dateText: "N/A",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 200,
              width: 355,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(37, 158, 158, 158)),
              child: Column(
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "١- فئة المزاد  | اسم المزاد | رقم المزاد | اسم العميل",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "نهاية المزاد",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrow.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: " بداية المزاد",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrow.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "التسجيل",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrowright.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "زيارة الموقع",
                            dateText: "15/12/2025 (10:30 am)",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 34,
                        ),
                        child: SvgPicture.asset(
                          "assets/downarrow.svg",
                          height: 15,
                          width: 15,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: "موافقة العميل",
                          dateText: "N/A",
                        ),
                        SvgPicture.asset(
                          "assets/arrowlefts.svg",
                          height: 10,
                          width: 10,
                        ),
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: " دفوعات المزاد",
                          dateText: "N/A",
                        ),
                        SvgPicture.asset(
                          "assets/arrowlefts.svg",
                          height: 10,
                          width: 10,
                        ),
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: "التسجيل",
                          dateText: "N/A",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 200,
              width: 355,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(37, 158, 158, 158)),
              child: Column(
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "١- فئة المزاد  | اسم المزاد | رقم المزاد | اسم العميل",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "نهاية المزاد",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrow.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: " بداية المزاد",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrow.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "التسجيل",
                            dateText: "12/12/2025 (11:40 pm)",
                          ),
                          SvgPicture.asset(
                            "assets/arrowright.svg",
                            height: 7,
                            width: 7,
                          ),
                          InfoStep(
                            circleColor: Colors.green,
                            borderColor: Color.fromARGB(151, 247, 255, 3),
                            labelText: "زيارة الموقع",
                            dateText: "15/12/2025 (10:30 am)",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 34,
                        ),
                        child: SvgPicture.asset(
                          "assets/downarrow.svg",
                          height: 15,
                          width: 15,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: "موافقة العميل",
                          dateText: "N/A",
                        ),
                        SvgPicture.asset(
                          "assets/arrowlefts.svg",
                          height: 10,
                          width: 10,
                        ),
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: " دفوعات المزاد",
                          dateText: "N/A",
                        ),
                        SvgPicture.asset(
                          "assets/arrowlefts.svg",
                          height: 10,
                          width: 10,
                        ),
                        InfoStep(
                          circleColor: Colors.red,
                          borderColor: Color.fromARGB(151, 247, 255, 3),
                          labelText: "التسجيل",
                          dateText: "N/A",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoStep extends StatelessWidget {
  final Color circleColor;
  final Color borderColor;
  final String labelText;
  final String dateText;

  const InfoStep({
    super.key,
    required this.circleColor,
    required this.borderColor,
    required this.labelText,
    required this.dateText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: circleColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: borderColor,
              width: 2,
            ),
          ),
        ),
        Text(
          labelText,
          style: TextStyle(fontSize: 10),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          height: 20,
          width: 73,
          decoration: BoxDecoration(
            color: color2,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Center(
            child: Text(
              dateText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 7,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
