import 'package:mzadcom/features/wallet/PaymentMethods/Bank_Transfer/cubit/bank_transfer_cubit.dart';
import '../../../authentication/registerations/widget/text_feiled.dart';
import '../../../authentication/registerations/widget/upload_file.dart';
import '../../../../core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'dart:io';

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
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.02),
                    buildTextField(
                      label: "Wallet.enter_amount".tr(),
                      controllername: addfundsbanktransfer,
                      validator: (value) =>
                          value!.isEmpty ? 'Wallet.vali_number'.tr() : null,
                    ),
                    buildTextField(
                      label: "Authentication.bank_name".tr(),
                      controllername: bankname,
                      validator: (value) => value!.isEmpty
                          ? 'Authentication.vali_bank'.tr()
                          : null,
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
                      validator: (value) => value!.isEmpty
                          ? "Wallet.vali_beneficiary".tr()
                          : null,
                    ),
                    FileUploadWidget(
                      afterFinishingCallBack: (file) {
                        context
                            .read<BankTransferCubit>()
                            .uploadedFileforBankTransfer = file;
                      },
                      title: "Wallet.voucher".tr(),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        minimumSize: Size(
                          screenWidth * 0.4,
                          screenHeight * 0.05,
                        ),
                      ),
                      child: Text(
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
