import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Auctions/RegisterForAuction/add_founds_register_auctions.dart';
import 'package:mzadcom/Auctions/RegisterForAuction/tab_item_registerfor_auctions.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/wallet/PaymentMethods/Bank_Transfer/bank_transfer_screen.dart';
import 'package:mzadcom/wallet/PaymentMethods/online_transfer.dart';

class RegisterForAuction extends StatefulWidget {
  const RegisterForAuction({super.key});

  @override
  State<RegisterForAuction> createState() => _RegisterForAuctionState();
}

class _RegisterForAuctionState extends State<RegisterForAuction> {
  // اللون الثاني

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(), // تأكد أن لديك CustomAppBar معرف مسبقًا
        body: Column(
          children: [
            // القسم العلوي
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: AlignmentDirectional
                  .centerStart, // يجعل المحتوى إلى أقصى اليسار
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // لجعل النصوص تبدأ من اليسار
                children: [
                  Row(
                    mainAxisSize:
                        MainAxisSize.min, // للحفاظ على عرض العناصر حسب المحتوى
                    children: [
                      SvgPicture.asset(
                        "assetss/auctions.svg",
                        height: 20,
                        width: 20,
                        color: Colors.black,
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
            // شريط التبويبات
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
            // محتويات التبويبات
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
