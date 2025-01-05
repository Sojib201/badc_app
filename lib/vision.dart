import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class Vision extends StatefulWidget {
  const Vision({super.key});

  @override
  State<Vision> createState() => _VisionState();
}

class _VisionState extends State<Vision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: Text(
          'ভিশন',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Center(
        child: Text(
          'ভিশন'
          , style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
