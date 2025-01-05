import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class Shar extends StatefulWidget {
  const Shar({super.key});

  @override
  State<Shar> createState() => _SharState();
}

class _SharState extends State<Shar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: Text(
          'সার সংক্রান্ত সেবা',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Center(
        child: Text(
          'সার সংক্রান্ত \nসেবা', style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
