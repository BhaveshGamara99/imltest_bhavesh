import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imltest_bhavesh/Screen/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () =>
    Get.to(LoginScreen()),
    //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))

    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Image.asset("assets/images/SplashScreen.jpeg")
    );
  }
}
