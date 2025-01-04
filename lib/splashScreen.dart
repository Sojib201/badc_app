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
          SizedBox(
            width: 90,
            child: LinearProgressIndicator(
              minHeight: 3,
              backgroundColor: Colors.grey[300],
              valueColor: const AlwaysStoppedAnimation(primaryGreen),
            ),
          ),
          const Spacer(),
          const Text(
            "badc.com",
            style: TextStyle(
                color: primaryGreen,
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
