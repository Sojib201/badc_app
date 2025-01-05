import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class OfficeCheif extends StatefulWidget {
  const OfficeCheif({super.key});

  @override
  State<OfficeCheif> createState() => _OfficeCheifState();
}

class _OfficeCheifState extends State<OfficeCheif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title:

        SizedBox(
          height: 25,
          child: Marquee(
            text:  'অফিস প্রধানসহ কর্মরত জনবলের তথ্য',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),


      ),
      body: Center(
        child: Text(
          'অফিস প্রধানসহ কর্মরত \nজনবলের তথ্য', style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
