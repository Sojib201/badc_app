import 'package:badc_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'CustomCard.dart';
import 'CustomListTileWidget.dart';
import 'badc_achievement.dart';
import 'badc_digitalized_service.dart';
import 'innovative_work.dart';
import 'loginScreen.dart';

class Innovation extends StatefulWidget {
  const Innovation({super.key});

  @override
  State<Innovation> createState() => _InnovationState();
}

class _InnovationState extends State<Innovation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            color: ScaffoldBackGroundColor,
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
        foregroundColor: ScaffoldBackGroundColor,
        backgroundColor: colorDeepGreen,
        centerTitle: true,
        title: SizedBox(
          height: 20,
          child: Marquee(
            text: 'ইনোভেশন কার্যক্রম ও অর্জনসমূহ',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomListTileWidget(
                tileColor: colorDeepGreen,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InnovativeWork(),
                      ));
                },
                title: 'বিভিন্ন ইনোভেটিভ \nকার্যক্রম',
                iconPath: "assets/employee.png",
              ),
              SizedBox(
                height: 20,
              ),
              CustomListTileWidget(
                tileColor: colorDeepGreen,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Achievement(),
                      ));
                },
                title: 'কৃষিক্ষেত্রে বিএডিসি\'র \nঅর্জনসমূহ',
                iconPath: "assets/employee.png",
              ),
              SizedBox(
                height: 20,
              ),
              CustomListTileWidget(
                tileColor: colorDeepGreen,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BadcDigitalizedService(),
                      ));
                },
                title:
                    'বি‌ডি‌সি‌\'র সহজিকৃত/ডিজিটালাইজড সেবাসমূহের\nতালিকা ও লিংক',
                iconPath: "assets/employee.png",
              ),


              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomCard(
              //         color: primaryGreen,
              //         label: 'বিভিন্ন ইনোভেটিভ \nকার্যক্রম',
              //         iconPath: "assets/employee.png",
              //         backgroundColor: Color(0xFFECE7A1),
              //         ontap: () {},
              //       ),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Expanded(
              //       child: CustomCard(
              //         color: primaryGreen,
              //         label: 'কৃষিক্ষেত্রে বিএডিসি\'র \nঅর্জনসমূহ',
              //         iconPath: "assets/employee.png",
              //         backgroundColor: Color(0xFFECE7A1),
              //         ontap: () {},
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomCard(
              //         color: primaryGreen,
              //         label:
              //             'বি‌ডি‌সি‌\'র সহজিকৃত/ডিজিটালাইজড\n সেবাসমূহের তালিকা ও লিংক',
              //         iconPath: "assets/employee.png",
              //         backgroundColor: Color(0xFFECE7A1),
              //         ontap: () {},
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
