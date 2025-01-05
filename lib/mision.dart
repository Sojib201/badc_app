import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class Mision extends StatefulWidget {
  const Mision({super.key});

  @override
  State<Mision> createState() => _MisionState();
}

class _MisionState extends State<Mision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: Text(
          'মিশন',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Center(
        child: Text(
          'মিশন',
          style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
