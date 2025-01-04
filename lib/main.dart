import 'package:badc_app/splashScreen.dart';
import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BDAC ',
      theme: ThemeData(
        scaffoldBackgroundColor: ScaffoldBackGroundColor,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const splashScreen(),
    );
  }
}
