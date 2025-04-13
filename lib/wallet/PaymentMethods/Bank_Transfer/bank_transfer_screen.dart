import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/authentication/registerations/widget/text_feiled.dart';
import 'package:mzadcom/authentication/registerations/widget/upload_file.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/wallet/PaymentMethods/Bank_Transfer/cubit/bank_transfer_cubit.dart';

class BankTransferScreen extends StatefulWidget {
  const BankTransferScreen({super.key});

  @override
  State<BankTransferScreen> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransferScreen> {
  TextEditingController addfundsbanktransfer = TextEditingController();
  TextEditingController bankname = TextEditingController();
  TextEditingController banknumber = TextEditingController();
  TextEditingController beneficiaryname = TextEditingController();

  File? uploadedFile;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => BankTransferCubit(),
      child: BlocConsumer<BankTransferCubit, BankTransferState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.02), // مسافة ديناميكية
                    buildTextField(
                      label: "Wallet.enter_amount".tr(),
                      controllername: addfundsbanktransfer,
                      validator: (value) =>
                          value!.isEmpty ? 'Wallet.vali_number'.tr() : null,
                    ),
                    buildTextField(
                      label: "Authentication.bank_name".tr(),
                      controllername: bankname,
                      validator: (value) =>
                          value!.isEmpty ? 'Authentication.vali_bank'.tr() : null,
                    ),
                    buildTextField(
                      label: "Authentication.account_number".tr(),
                      controllername: banknumber,
                      validator: (value) => value!.isEmpty
                          ? 'Authentication.vali_idnumber'.tr()
                          : null,
                    ),
                    buildTextField(
                      label: "Wallet.beneficiary".tr(),
                      controllername: beneficiaryname,
                      validator: (value) =>
                          value!.isEmpty ? "Wallet.vali_beneficiary".tr() : null,
                    ),
                    FileUploadWidget(
                      afterFinishingCallBack: (file) {
                          context.read<BankTransferCubit>().uploadedFileforBankTransfer =
                              file;
                        },
                      title: "Wallet.voucher".tr(),
                    ),
                    SizedBox(height: screenHeight * 0.02), // مسافة ديناميكية
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: color1, // لون الزر
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(6), // الحواف الدائرية
                        ),
                        minimumSize: Size(
                          screenWidth * 0.4, // العرض ديناميكي
                          screenHeight * 0.05, // الارتفاع ديناميكي
                        ),
                      ),
                      child:  Text(
                         "Authentication.loginb5".tr(),
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
