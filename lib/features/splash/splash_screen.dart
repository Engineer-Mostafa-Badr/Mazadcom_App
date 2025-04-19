import 'package:mzadcom/features/authentication/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashVideo extends StatefulWidget {
  const SplashVideo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashVideoState createState() => _SplashVideoState();
}

class _SplashVideoState extends State<SplashVideo> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assetss/viediosplash.gif'),
      ),
    );
  }
}
