import 'package:mzadcom/features/authentication/registerations/individual/cubit/individual_register_cubit.dart';
import 'package:mzadcom/features/authentication/registerations/company/cubit/company_register_cubit.dart';
import 'package:mzadcom/features/authentication/forgot_reset_password/cubit/forgot_password_cubit.dart';
import 'package:mzadcom/features/authentication/forgot_reset_password/cubit/reset_password_cubit.dart';
import 'package:mzadcom/features/wallet/PaymentMethods/Bank_Transfer/cubit/bank_transfer_cubit.dart';
import 'package:mzadcom/features/authentication/login/cubit/login_cubit.dart';
import 'package:mzadcom/features/home/widget/search/cubit/search_cubit.dart';
import 'package:mzadcom/features/authentication/login/login_screen.dart';
import 'package:mzadcom/features/splash/cubit/splash_cubit_cubit.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/features/home/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => SplashCubit()),
        BlocProvider(create: (context) => IndividualRegisterCubit()),
        BlocProvider(create: (context) => CompanyRegisterCubit()),
        BlocProvider(create: (context) => ForgotPasswordCubit()),
        BlocProvider(create: (context) => ResetPasswordCubit()),
        BlocProvider(create: (context) => BankTransferCubit()),
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => SearchCubit())
      ],
      child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
          theme: ThemeData(
              fontFamily: 'Tajawal',
              scaffoldBackgroundColor: Colors.white,
              colorSchemeSeed: color2)),
    );
  }
}
