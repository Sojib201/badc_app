import 'package:badc_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'CustomCard.dart';
import 'CustomListTileWidget.dart';
import 'loginScreen.dart';
import 'office_cheif.dart';
import 'office_location.dart';
import 'office_work.dart';

class OfficePlace extends StatefulWidget {
  const OfficePlace({super.key});

  @override
  State<OfficePlace> createState() => _OfficePlaceState();
}

class _OfficePlaceState extends State<OfficePlace> {
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
          height: 25,
          child: Marquee(
            text: 'অফিস এবং বিভিন্ন স্থানসমূহ',
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
                        builder: (context) => OfficeLocation(),
                      ));
                },
                title: 'অফিস ও স্থাপনাসমূহের \nলোকেশনসহ ঠিকানা',
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
                        builder: (context) => OfficeCheif(),
                      ));
                },
                title: 'অফিস প্রধানসহ কর্মরত \nজনবলের তথ্য',
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
                        builder: (context) => OfficeWork(),
                      ));
                },
                title: 'অফিসের কার্যক্রমসহ \nবিস্তারিত তথ্য',
                iconPath: "assets/employee.png",
              ),

              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomCard(
              //         color: primaryGreen,
              //         label: 'অফিস ও স্থাপনাসমূহের \nলোকেশনসহ ঠিকানা',
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
              //         label: 'অফিস প্রধানসহ কর্মরত \nজনবলের তথ্য',
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
              //
              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomCard(
              //         color: primaryGreen,
              //         label: 'অফিসের কার্যক্রমসহ \nবিস্তারিত তথ্য',
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
