import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class InnovativeWork extends StatefulWidget {
  const InnovativeWork({super.key});

  @override
  State<InnovativeWork> createState() => _WState();
}

class _WState extends State<InnovativeWork> {
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
            text: 'বিভিন্ন ইনোভেটিভ কার্যক্রম',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'বিভিন্ন ইনোভেটিভ \nকার্যক্রম', style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
