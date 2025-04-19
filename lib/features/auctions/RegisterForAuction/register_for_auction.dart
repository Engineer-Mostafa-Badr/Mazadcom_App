import 'package:mzadcom/features/auctions/RegisterForAuction/tab_item_registerfor_auctions.dart';
import 'package:mzadcom/features/auctions/RegisterForAuction/add_founds_register_auctions.dart';
import 'package:mzadcom/features/wallet/PaymentMethods/Bank_Transfer/bank_transfer_screen.dart';
import 'package:mzadcom/features/wallet/PaymentMethods/online_transfer.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterForAuction extends StatefulWidget {
  const RegisterForAuction({super.key});

  @override
  State<RegisterForAuction> createState() => _RegisterForAuctionState();
}

class _RegisterForAuctionState extends State<RegisterForAuction> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        "assetss/auctions.svg",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "خردة متنوعة",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "500 ربال عماني",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: color2,
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.circular(7),
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                tabs: [
                  TabItemRegisterforauctions(
                    title: "Wallet.bank_transfer".tr(),
                    icon: Icon(Icons.account_balance, size: 12),
                  ),
                  TabItemRegisterforauctions(
                    title: "Wallet.online_payment".tr(),
                    icon: Icon(Icons.language, size: 12),
                  ),
                  TabItemRegisterforauctions(
                    title: "Wallet.wallet".tr(),
                    icon: Icon(Icons.money, size: 12),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  BankTransferScreen(),
                  OnlineTransfer(),
                  AddFoundsRegisterAuctions(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
