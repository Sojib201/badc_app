import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class BadcCommunication extends StatefulWidget {
  const BadcCommunication({super.key});

  @override
  State<BadcCommunication> createState() => _BadcCommunicationState();
}

class _BadcCommunicationState extends State<BadcCommunication> {
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
            text:
                'বিএডিসি\'র কর্মরত কর্মকর্তাদের সাথে যোগাযোগ সংক্রান্ত \'টেলিফোন ডিরেক্টরি\' এ্যাপস্ থাকবে',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'বিএডিসি\'র কর্মরত কর্মকর্তাদের সাথে যোগাযোগ সংক্রান্ত \'টেলিফোন ডিরেক্টরি\' এ্যাপস্ থাকবে',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
