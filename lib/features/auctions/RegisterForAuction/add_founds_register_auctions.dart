import 'package:mzadcom/features/wallet/AddFunds/add_funds.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddFoundsRegisterAuctions extends StatelessWidget {
  const AddFoundsRegisterAuctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Wallet.omr".tr(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "2000.34",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Wallet.available_balance".tr(),
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: color2),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6), // الحواف المستديرة
              ),
              elevation: 0,
              fixedSize: Size(160, 40), // تحديد العرض والطول
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddFunds()), // استبدل بـ اسم الصفحة
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wallet.add_funds".tr(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black, // لون النص
                  ),
                ),
                SizedBox(width: 4),
                SvgPicture.asset(
                  "assetss/mywallet.svg",
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
