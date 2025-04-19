import 'package:mzadcom/features/wallet/AddFunds/add_funds.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../core/constants/constants_colors.dart';
import '../../core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6, right: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            SvgPicture.asset(
                              "assetss/mywallet.svg",
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Wallet.welcome_back".tr(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text("إبراهيم الجنيبي",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Wallet.bidder_number".tr(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "B0280",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Wallet.available_balance".tr(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "234,245 OMR",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Wallet.phone_number".tr(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "95756776",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Wallet.email_".tr(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Ibrahim@gmail.com",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Wallet.financial_Details".tr(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 350,
                        child: ListTile(
                          leading: Icon(
                            Icons.arrow_upward,
                            color: Colors.black,
                          ),
                          title: Text("Wallet.placements".tr()),
                          trailing: Text("290.70  ريال عماني"),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        height: 60,
                        width: 360,
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          title: Text("Wallet.customer_receivables".tr()),
                          trailing: Text("290.70  ريال عماني"),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        height: 60,
                        width: 360,
                        child: ListTile(
                          leading: Icon(
                            Icons.block_outlined,
                            color: Colors.black,
                          ),
                          title: Text("Wallet.reserved_amounts".tr()),
                          trailing: Text("290.70  ريال عماني"),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        height: 60,
                        width: 360,
                        child: ListTile(
                          leading: Container(
                              color: Colors.white,
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.black,
                              )),
                          title: Text("Wallet.withdrawals".tr()),
                          trailing: Text("لاتوجد مبالغ"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0,
                    fixedSize: Size(160, 40),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddFunds()),
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
                          color: Colors.white,
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
          ),
        ),
      ),
    );
  }
}
