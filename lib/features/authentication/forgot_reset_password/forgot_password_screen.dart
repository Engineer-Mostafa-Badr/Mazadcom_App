import 'package:mzadcom/features/authentication/forgot_reset_password/cubit/forgot_password_cubit.dart';
import 'package:mzadcom/features/authentication/forgot_reset_password/cubit/forgot_password_state.dart';
import 'package:mzadcom/features/authentication/forgot_reset_password/reset_password_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final TextEditingController forgotPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(),
          body: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
            listener: (context, state) {
              if (state is SuccessForgotPasswordState) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResetPasswordScreen()),
                  (route) => false,
                );
              } else if (state is ErrorForgotPasswordState) {}
            },
            builder: (context, state) {
              if (state is LoadingForgotPasswordState) {
                return Center(
                    child: LoadingAnimationWidget.inkDrop(
                        color: color1, size: 200));
              }
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight * 0.1),
                      Center(
                        child: Container(
                          height: screenHeight * 0.5,
                          width: screenWidth,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(31, 158, 158, 158),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.02),
                                height: screenHeight * 0.07,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: color1,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  spacing: 3,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.08,
                                      height: screenWidth * 0.08,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            color: Colors.white, width: 1.4),
                                      ),
                                      child: const Icon(
                                        Icons.login,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Authentication.loginforgotpassword".tr(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.05),
                                    child: Text(
                                      "Authentication.loginuser".tr(),
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.04),
                                    child: TextFormField(
                                      controller: forgotPasswordController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color.fromARGB(
                                            63, 158, 158, 158),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: screenWidth * 0.04,
                                            vertical: screenHeight * 0.015),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.04),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    final cubit =
                                        context.read<ForgotPasswordCubit>();
                                    cubit.forgotPassword(
                                      forgotPasswordController.text,
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: color1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    minimumSize: Size(
                                      screenWidth * 0.5,
                                      screenHeight * 0.06,
                                    ),
                                  ),
                                  child: Text(
                                    "Authentication.loginb5".tr(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
