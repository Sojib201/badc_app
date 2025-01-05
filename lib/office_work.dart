import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class OfficeWork extends StatefulWidget {
  const OfficeWork({super.key});

  @override
  State<OfficeWork> createState() => _WState();
}

class _WState extends State<OfficeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: SizedBox(
          height: 25,
          child: Marquee(
            text: 'অফিসের কার্যক্রমসহ বিস্তারিত তথ্য',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'অফিসের কার্যক্রমসহ \nবিস্তারিত তথ্য', style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
