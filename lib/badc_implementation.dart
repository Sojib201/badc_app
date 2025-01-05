import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class BadcImplementation extends StatefulWidget {
  const BadcImplementation({super.key});

  @override
  State<BadcImplementation> createState() => _BadcImplementationState();
}

class _BadcImplementationState extends State<BadcImplementation> {
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
            text: 'বিএডিসি\'র কর্তৃক বাস্তবায়নাধীন সকল প্রকল্প ও কর্মসূচির তালিকা',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'বিএডিসি\'র কর্তৃক বাস্তবায়নাধীন \nসকল প্রকল্প ও কর্মসূচির তালিকা', style: TextStyle(fontSize: 28,),
        ),
      ),
    );
  }
}
