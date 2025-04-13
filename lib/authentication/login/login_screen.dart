import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/Mains/mains_screen.dart';
import 'package:mzadcom/authentication/fingerprint/local_auth.dart';
import 'package:mzadcom/authentication/forgot_reset_password/forgot_password_screen.dart';
import 'package:mzadcom/authentication/login/cubit/login_cubit.dart';
import 'package:mzadcom/authentication/login/cubit/login_state.dart';
import 'package:mzadcom/authentication/google-login/signin_by_google.dart';
import 'package:mzadcom/authentication/bidder_register_screen.dart';
import 'package:mzadcom/authentication/login-by-phone/login_phone.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        appBar: CustomAppBarlog(),
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
                (route) => false,
              );
            } else if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return 
              Center(
                child:
                    LoadingAnimationWidget.inkDrop(color: color1, size: 200));
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: screenWidth * 0.1,
                    child: SvgPicture.asset(
                      "assetss/loginperson.svg",
                      height: screenWidth * 0.15,
                      width: screenWidth * 0.15,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Authentication.loginuser".tr(),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Authentication.loginpassword".tr(),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    padding:
                        EdgeInsetsDirectional.only(end: screenWidth * 0.07),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen()),
                        );
                      },
                      child: Text(
                        "Authentication.loginforgotpassword".tr(),
                        style: TextStyle(
                          fontSize: screenWidth * 0.03,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final cubit = context.read<LoginCubit>();
                      cubit.login(
                        emailController.text,
                        passwordController.text,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      minimumSize: Size(screenWidth * 0.6, screenHeight * 0.05),
                    ),
                    child: Text(
                      "Authentication.loginb1".tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.006),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneNumberOtpScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      minimumSize: Size(screenWidth * 0.6, screenHeight * 0.05),
                    ),
                    child: Text(
                      "Authentication.loginb6".tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.006),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      minimumSize: Size(screenWidth * 0.6, screenHeight * 0.05),
                    ),
                    child: Text(
                      "Authentication.loginb2".tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.006),
                  ElevatedButton(
                    onPressed: () async {
                      LocalAuthApi.canAuthenticate();
                      bool isCorrect =
                          await LocalAuthApi.authenticate("reason");
                      isCorrect
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()),
                            )
                          : print("Authentication failed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      minimumSize: Size(screenWidth * 0.6, screenHeight * 0.05),
                    ),
                    child: Text(
                      "Authentication.loginb3".tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.006),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BidderRegister()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(
                          color: color2,
                          width: 1,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      minimumSize: Size(screenWidth * 0.6, screenHeight * 0.05),
                    ),
                    child: Text(
                      "Authentication.loginb4".tr(),
                      style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          signInWithGoogle();
                        },
                        icon: Image.asset(
                          "assetss/google.png",
                          height: screenWidth * 0.06,
                          width: screenWidth * 0.06,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assetss/facebook.png",
                          height: screenWidth * 0.06,
                          width: screenWidth * 0.06,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
