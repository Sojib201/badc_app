import 'dart:async';

import 'package:badc_app/homePage.dart';
import 'package:badc_app/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false);
      },
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Image.asset(
            "assets/logo.png",
            height: 170,
            width: 170,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
