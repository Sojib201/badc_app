import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class BadcDigitalizedService extends StatefulWidget {
  const BadcDigitalizedService({super.key});

  @override
  State<BadcDigitalizedService> createState() => _BadcDigitalizedServiceState();
}

class _BadcDigitalizedServiceState extends State<BadcDigitalizedService> {
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
            text: 'বিএডিসি\'র সহজিকৃত/ডিজিটালাইজড সেবাসমূহের তালিকা ও লিংক',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'বিএডিসি\'র সহজিকৃত/ডিজিটালাইজড সেবাসমূহের তালিকা ও লিংক', style: TextStyle(fontSize: 28,),
        ),
      ),
    );
  }
}
