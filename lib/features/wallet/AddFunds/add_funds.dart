import 'package:mzadcom/features/wallet/PaymentMethods/Bank_Transfer/bank_transfer_screen.dart';
import 'package:mzadcom/features/wallet/PaymentMethods/online_transfer.dart';
import 'package:mzadcom/features/wallet/AddFunds/tabitem_addfunds.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../core/constants/constants_colors.dart';
import '../../../core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';

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
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.08),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Wallet.founds_type".tr(),
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.03,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Container(
              height: screenHeight * 0.06,
              width: screenWidth * 0.9,
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
                children: const [
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
