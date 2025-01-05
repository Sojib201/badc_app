import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class Seed extends StatefulWidget {
  const Seed({super.key});

  @override
  State<Seed> createState() => _SeedState();
}

class _SeedState extends State<Seed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: Text(
          'বীজ ও উদ্যান সংক্রান্ত সেবা',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Center(
        child: Text(
          'বীজ ও উদ্যান \nসংক্রান্ত সেবা', style: TextStyle(fontSize: 32,),
        ),
      ),
    );  }
}
