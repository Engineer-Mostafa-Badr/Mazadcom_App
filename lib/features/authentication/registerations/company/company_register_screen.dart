import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mzadcom/features/main_home/main_home_view.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/company_register_cubit.dart';
import 'package:flutter/material.dart';
import '../widget/text_feiled.dart';
import '../widget/upload_file.dart';
import '../widget/phone.dart';
import 'dart:developer';

class CompanyRegister extends StatefulWidget {
  const CompanyRegister({super.key});
  @override
  State<CompanyRegister> createState() => _CompanyRegisterState();
}

class _CompanyRegisterState extends State<CompanyRegister> {
  final TextEditingController companyNameController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController resetCardNuberController =
      TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final TextEditingController idNumberController = TextEditingController();

  final TextEditingController authorityNameController = TextEditingController();

  final TextEditingController bankNameController = TextEditingController();

  final TextEditingController accountNumberController = TextEditingController();

  final TextEditingController crNumberController = TextEditingController();

  final TextEditingController vatNumberController = TextEditingController();

  String mobile = "", countryCode = "968";
  final _formKey = GlobalKey<FormState>();
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompanyRegisterCubit(),
      child: BlocConsumer<CompanyRegisterCubit, CompanyRegisterState>(
        listener: (context, state) {
          if (state is SuccessCompanyRegisterState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
              (route) => false,
            );
          } else if (state is FailerCompanyRegisterState) {
            log("erroooooooooooor");
          }
        },
        builder: (context, state) {
          if (state is LoadingCompanyRegisterState) {
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
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        buildTextField(
                            label: "Authentication.bank_name".tr(),
                            controllername: companyNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Authentication.vali_bank".tr();
                              }
                              return null;
                            }),
                        PhoneNumberInput(
                          title: "Authentication.phone_number".tr(),
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
                            label: "Authentication.email".tr(),
                            controllername: emailController,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@')) {
                                return "Authentication.vali_email".tr();
                              }
                              return null;
                            }),
                        buildTextField(
                            label: "Authentication.password".tr(),
                            controllername: passwordController,
                            validator: (value) {
                              if (value == null || value.length < 6) {
                                return 'يجب أن تكون كلمة المرور مكونة من 6 أحرف على الأقل';
                              }
                              return null;
                            }),
                        buildTextField(
                            label: "Authentication.rest_password".tr(),
                            controllername: resetCardNuberController,
                            validator: (value) {
                              if (value != passwordController.text) {
                                return "Authentication.rest_password".tr();
                              }
                              return null;
                            }),
                        buildTextField(
                            label: "Authentication.confirm_password".tr(),
                            controllername: confirmPasswordController,
                            validator: (value) {
                              if (value != passwordController.text) {
                                return "Authentication.confirm_password".tr();
                              }
                              return null;
                            }),
                        buildTextField(
                            label: "Authentication.authority_name".tr(),
                            controllername: authorityNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Authentication.vali_authority_name"
                                    .tr();
                              }
                              return null;
                            }),
                        FileUploadWidget(
                          title: "Authentication.authority_letter".tr(),
                          afterFinishingCallBack: (file) {
                            context.read<CompanyRegisterCubit>().fileIdNumber =
                                file;
                          },
                        ),
                        buildTextField(
                            label: "Authentication.id_number".tr(),
                            controllername: usernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Authentication.vali_idnumber".tr();
                              }
                              return null;
                            }),
                        FileUploadWidget(
                          title: 'Authentication.attach_number'.tr(),
                          afterFinishingCallBack: (file) {
                            context
                                .read<CompanyRegisterCubit>()
                                .fileAuthLetter = file;
                          },
                        ),
                        buildTextField(
                            label: "Authentication.bank_name".tr(),
                            controllername: bankNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Authentication.vali_bank".tr();
                              }
                              return null;
                            }),
                        buildTextField(
                            label: "Authentication.account_number".tr(),
                            controllername: accountNumberController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Authentication.vali_bank_number".tr();
                              }
                              return null;
                            }),
                        buildTextField(
                            label: "Authentication.cr_number".tr(),
                            controllername: crNumberController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Authentication.vali_cr_number".tr();
                              }
                              return null;
                            }),
                        buildTextField(
                            label: "Authentication.tax_certificate".tr(),
                            controllername: vatNumberController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Authentication.vali_tax_certificate"
                                    .tr();
                              }
                              return null;
                            }),
                        FileUploadWidget(
                          title: 'Authentication.attach_cr'.tr(),
                          afterFinishingCallBack: (file) {
                            context.read<CompanyRegisterCubit>().fileCrNumber =
                                file;
                          },
                        ),
                        FileUploadWidget(
                          title: "Authentication.attach_vat_certificate".tr(),
                          afterFinishingCallBack: (file) {
                            context
                                .read<CompanyRegisterCubit>()
                                .fileVatCertificate = file;
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
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
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: isAccepted
                              ? () {
                                  final cubit =
                                      context.read<CompanyRegisterCubit>();
                                  cubit.submitForm(
                                    companyNameController.text,
                                    countryCode,
                                    mobile,
                                    emailController.text,
                                    usernameController.text,
                                    passwordController.text,
                                    confirmPasswordController.text,
                                    resetCardNuberController.text,
                                    accountNumberController.text,
                                    bankNameController.text,
                                    authorityNameController.text,
                                    crNumberController.text,
                                    vatNumberController.text,
                                    1,
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: color1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text("Authentication.loginb5".tr()),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
