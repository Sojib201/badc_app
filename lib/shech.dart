import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class Shech extends StatefulWidget {
  const Shech({super.key});

  @override
  State<Shech> createState() => _ShechState();
}

class _ShechState extends State<Shech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: Text(
          'সেচ সংক্রান্ত সেবা',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Center(
        child: Text(
          'সেচ সংক্রান্ত \nসেবা', style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
