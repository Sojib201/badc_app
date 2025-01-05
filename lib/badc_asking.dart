import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class BadcAsking extends StatefulWidget {
  const BadcAsking({super.key});

  @override
  State<BadcAsking> createState() => _BadcAskingState();
}

class _BadcAskingState extends State<BadcAsking> {
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
            text: 'সচরাচর জিজ্ঞাসার জন্য এটি একটি প্লাটফর্ম',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'সচরাচর জিজ্ঞাসার জন্য এটি একটি প্লাটফর্ম', style: TextStyle(fontSize: 28,),
        ),
      ),
    );
  }
}
