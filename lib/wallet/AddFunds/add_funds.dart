import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/wallet/AddFunds/tabitem_addfunds.dart';
import 'package:mzadcom/wallet/PaymentMethods/Bank_Transfer/bank_transfer_screen.dart';
import 'package:mzadcom/wallet/PaymentMethods/online_transfer.dart';

class AddFunds extends StatelessWidget {
  const AddFunds({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            SizedBox(height: screenHeight * 0.02), // مسافة ديناميكية
            Padding(
              padding:
                  EdgeInsets.only(right: screenWidth * 0.08), // مسافة ديناميكية
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Wallet.founds_type".tr(),
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.03, // حجم النص ديناميكي
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01), // مسافة ديناميكية
            Container(
              height: screenHeight * 0.06, // ارتفاع ديناميكي
              width: screenWidth * 0.9, // العرض ديناميكي
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: color1,
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  TabItemAddFunds(
                    title: "Wallet.bank_transfer".tr(),
                    icon: Icon(Icons.account_balance),
                  ),
                  TabItemAddFunds(
                    title: "Wallet.online_payment".tr(),
                    icon: Icon(Icons.language),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BankTransferScreen(),
                  OnlineTransfer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
