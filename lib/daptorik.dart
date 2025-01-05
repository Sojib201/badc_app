import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class Daptorik extends StatefulWidget {
  const Daptorik({super.key});

  @override
  State<Daptorik> createState() => _DaptorikState();
}

class _DaptorikState extends State<Daptorik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: Text(
          'দাপ্তরিক অন্যান্য সেবা',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Center(
        child: Text(
          'দাপ্তরিক অন্যান্য \nসেবা', style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
