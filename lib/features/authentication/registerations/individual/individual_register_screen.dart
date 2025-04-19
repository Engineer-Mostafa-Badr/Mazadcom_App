import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import '../../../main_home/main_home_view.dart';
import 'cubit/individual_register_cubit.dart';
import 'package:flutter/material.dart';
import '../widget/text_feiled.dart';
import '../widget/upload_file.dart';
import '../widget/phone.dart';
import 'dart:developer';
import 'dart:io';

class IndividualRegister extends StatefulWidget {
  const IndividualRegister({super.key});
  @override
  State<IndividualRegister> createState() => _IndividualRegisterState();
}

class _IndividualRegisterState extends State<IndividualRegister> {
  final TextEditingController nameIndividualController =
      TextEditingController();
  final TextEditingController emailIndividualController =
      TextEditingController();
  final TextEditingController usernameIndividualController =
      TextEditingController();
  final TextEditingController passwordIndividualController =
      TextEditingController();
  final TextEditingController confirmPasswordIndividualController =
      TextEditingController();
  final TextEditingController idNumberIndividualController =
      TextEditingController();
  final TextEditingController bankNameIndividualController =
      TextEditingController();
  final TextEditingController bankAccountNumberIndividualController =
      TextEditingController();

  String mobile = "", countryCode = "968";
  final _formKey = GlobalKey<FormState>();
  File? uploadedFile;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IndividualRegisterCubit(),
      child: Scaffold(
        body: BlocConsumer<IndividualRegisterCubit, IndividualRegisterState>(
          listener: (context, state) {
            if (state is SuccessIndividualRegisterState) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
                (route) => false,
              );
            } else if (state is FailIndividualRegisterState) {
              log("Registration failed");
            }
          },
          builder: (context, state) {
            if (state is LoadingIndividualRegisterState) {
              return Center(
                  child:
                      LoadingAnimationWidget.inkDrop(color: color1, size: 200));
            }
            return Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                      bottom: MediaQuery.of(context).size.width * 0.04),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: Color.fromARGB(30, 158, 158, 158),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01),
                          buildTextField(
                            label: "Authentication.name".tr(),
                            controllername: nameIndividualController,
                            validator: (value) => value!.isEmpty
                                ? "Authentication.vali_name".tr()
                                : null,
                          ),
                          buildTextField(
                            label: "Authentication.email".tr(),
                            controllername: emailIndividualController,
                            validator: (value) => value!.isEmpty
                                ? "Authentication.vali_email".tr()
                                : null,
                          ),
                          buildTextField(
                            label: "Authentication.user_name".tr(),
                            controllername: usernameIndividualController,
                            validator: (value) => value!.isEmpty
                                ? "Authentication.vali_username".tr()
                                : null,
                          ),
                          buildTextField(
                            label: "Authentication.password".tr(),
                            controllername: passwordIndividualController,
                            validator: (value) => value!.isEmpty
                                ? 'Authentication.vali_password'.tr()
                                : null,
                          ),
                          buildTextField(
                            label: "Authentication.confirm_password".tr(),
                            controllername: confirmPasswordIndividualController,
                            validator: (value) => value!.isEmpty
                                ? "Authentication.vali_password".tr()
                                : null,
                          ),
                          PhoneNumberInput(
                            title: 'Authentication.phone_number'.tr(),
                            updateCountryCode: (c) {
                              setState(() {
                                countryCode = c;
                              });
                            },
                            updatePhoneNumber: (p) {
                              setState(() {
                                mobile = p;
                              });
                            },
                          ),
                          buildTextField(
                            label: "Authentication.id_number".tr(),
                            controllername: idNumberIndividualController,
                            validator: (value) => value!.isEmpty
                                ? "Authentication.vali_idnumber".tr()
                                : null,
                          ),
                          FileUploadWidget(
                            title: 'Authentication.attach_number'.tr(),
                            afterFinishingCallBack: (file) {
                              context
                                  .read<IndividualRegisterCubit>()
                                  .uploadedFile = file;
                            },
                          ),
                          buildTextField(
                            label: "Authentication.bank_name".tr(),
                            controllername: bankNameIndividualController,
                            validator: (value) => value!.isEmpty
                                ? "Authentication.vali_bank".tr()
                                : null,
                          ),
                          buildTextField(
                            label: "Authentication.account_number".tr(),
                            controllername:
                                bankAccountNumberIndividualController,
                            validator: (value) => value!.isEmpty
                                ? "Authentication.vali_bank_number".tr()
                                : null,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isAccepted,
                                onChanged: (value) {
                                  setState(() {
                                    isAccepted = value!;
                                  });
                                },
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("Authentication.accept_terms".tr()),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: isAccepted
                                ? () {
                                    final cubit =
                                        context.read<IndividualRegisterCubit>();
                                    cubit.submitForm(
                                      nameIndividualController.text,
                                      countryCode,
                                      mobile,
                                      emailIndividualController.text,
                                      usernameIndividualController.text,
                                      passwordIndividualController.text,
                                      confirmPasswordIndividualController.text,
                                      idNumberIndividualController.text,
                                      bankAccountNumberIndividualController
                                          .text,
                                      bankNameIndividualController.text,
                                      0,
                                    );
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  isAccepted ? color2 : Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("Authentication.register".tr()),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
