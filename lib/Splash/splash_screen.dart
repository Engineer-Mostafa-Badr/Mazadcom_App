// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzadcom/authentication/login/login_screen.dart';
// import 'package:mzadcom/Services/media_query.dart';
// import 'package:mzadcom/Splash/cubit/splash_cubit_cubit.dart';
// import 'package:mzadcom/Splash/cubit/splash_cubit_state.dart';
// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => SplashCubit(),
//       child: BlocBuilder<SplashCubit, SplashState>(
//         builder: (context, state) {
//           if (state is SplashLoaded) {
//             WidgetsBinding.instance.addPostFrameCallback((_) {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => LoginScreen()),
//               );
//             });
//           }

//           final mediaQueryHelper = MediaQueryHelper(context);

//           return Scaffold(
//             body: Center(
//               child: Image.asset(
//                 "assets/splash-logo.png",
//                 height: mediaQueryHelper.screenHeight * 0.3,
//                 width: mediaQueryHelper.screenWidth * 0.3,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'dart:async';
import 'package:flutter/material.dart';

class SplashVideo extends StatefulWidget {
  @override
  _SplashVideoState createState() => _SplashVideoState();
}

class _SplashVideoState extends State<SplashVideo> {
  @override
  void initState() {
    super.initState();
    // Timer to navigate to the home screen after 3 seconds
    Timer(Duration(seconds: 7), () {
Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assetss/viediosplash.gif'), // Ensure this path matches your GIF's location
      ),
    );
  }
}
