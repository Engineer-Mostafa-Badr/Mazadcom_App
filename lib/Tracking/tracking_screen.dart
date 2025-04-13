import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/Tracking/dropdown.dart';
import 'package:mzadcom/Tracking/tracking_buttons.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(),
            body: Column(children: [
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 60,
                  width: 360,
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "تتبع المزادات",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            SvgPicture.asset(
                              "assets/chart.svg",
                              height: 18,
                              width: 18,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              CustomDropdownButton(),
                            ]),
                          ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              CustomButtonsScreen(),
            ])));
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class TrackingScreen extends StatefulWidget {
//   const TrackingScreen({super.key});

//   @override
//   State<TrackingScreen> createState() => _TrackingScreenState();
// }

// class _TrackingScreenState extends State<TrackingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: CustomAppBar(),
//         body: Column(
//           children: [
//             // const SizedBox(height: 10),
//             Center(
//               child: Container(
//                 height: 85,
//                 decoration: BoxDecoration(
//                   color: color2,
//                   // borderRadius: BorderRadius.circular(7),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 4),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           const Text(
//                             "تتبع المزادات",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           const SizedBox(width: 5),
//                           SvgPicture.asset(
//                             "assets/chart.svg",
//                             height: 18,
//                             width: 18,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CustomDropdownButton(),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 7),
//             // Expanded(
//             //   child: Container(
//             //     // هنا يمكن إضافة محتوى آخر
//             //   ),
//             // ),
//             CustomButtonsScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }
