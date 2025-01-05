import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class OfficeLocation extends StatefulWidget {
  const OfficeLocation({super.key});

  @override
  State<OfficeLocation> createState() => _OfficeLocationState();
}

class _OfficeLocationState extends State<OfficeLocation> {
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
            text: 'অফিস ও স্থাপনাসমূহের লোকেশনসহ ঠিকানা',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'অফিস ও স্থাপনাসমূহের \nলোকেশনসহ ঠিকানা',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
