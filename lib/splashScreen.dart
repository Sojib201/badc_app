import 'dart:async';
import 'package:badc_app/loginScreen.dart';
import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 160,
              width: 150,
              fit: BoxFit.fill,
            ),
          ),
          const Spacer(),
          CircularProgressIndicator(
            color: colorGolden,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Version 1.0.0",
            style: TextStyle(
                color: primaryGreen,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6),
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
