import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(45, 158, 158, 158),
            ),
            height: 85,
            width: 350,
            child: Row(
              children: [
                SizedBox(
                  width: 240,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 67,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 7),
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 7),
                                    child: CircleAvatar(
                                      radius: 9,
                                      backgroundColor: color1,
                                      child: Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "المبلغ الحالي",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "1,000 OMR",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 7, top: 3),
                              width: 140,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "خردة متنوعة",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "MZAD2523",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.key,
                                        size: 10,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "1h 30m 31s",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 245, 19, 3)),
                                      ),
                                      Icon(
                                        Icons.lock_clock,
                                        size: 10,
                                        color: Color.fromARGB(255, 245, 19, 3),
                                      )
                                    ],
                                  ),
                                  Row(
                                    spacing: 3,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assetss/numbidd.svg",
                                            height: 15,
                                            width: 15,
                                          ),
                                          Text(
                                            "30",
                                            style: TextStyle(
                                              fontSize: 7.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SvgPicture.asset(
                                        "assetss/auto.svg",
                                        width: 15,
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 17,
                        decoration: BoxDecoration(
                            color: color1,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "المزيد من التفاصيل",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              "assetss/auctions.svg",
                              height: 9,
                              width: 9,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: const Color.fromARGB(45, 158, 158, 158),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        child: Image.asset(
                          "assetss/ss.jpg",
                          width: 140,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -7,
                        left: 3,
                        child: Image.asset(
                          "assetss/wlogos.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(
                              "assetss/com-logo.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 2,
                        top: 2,
                        child: Card(
                          color: color1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Text(
                              "مفرد",
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
