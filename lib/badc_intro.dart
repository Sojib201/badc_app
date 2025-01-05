import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

import 'CustomListTileWidget.dart';

class BadcIntro extends StatefulWidget {
  const BadcIntro({super.key});

  @override
  State<BadcIntro> createState() => _BadcIntroState();
}

class _BadcIntroState extends State<BadcIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: Text(
          'বি‌ডি‌সি‌\'র পরিচিতি',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Center(
        child: Text(
          'বি‌ডি‌সি‌\'র পরিচিতি', style: TextStyle(fontSize: 32,),
        ),
      ),
    );
  }
}
