import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Suggestion extends StatefulWidget {
  const Suggestion({super.key});

  @override
  State<Suggestion> createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
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
            text: 'বিভিন্ন পরামর্শ',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'বিভিন্ন পরামর্শ', style: TextStyle(fontSize: 28,),
        ),
      ),
    );
  }
}
