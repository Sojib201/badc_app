import 'package:badc_app/CustomExpansionTileWidget.dart';
import 'package:badc_app/CustomListTileWidget.dart';
import 'package:badc_app/style.dart';
import 'package:badc_app/vision.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'badc_intro.dart';
import 'loginScreen.dart';
import 'mision.dart';

class BadcDetails extends StatefulWidget {
  const BadcDetails({super.key});

  @override
  State<BadcDetails> createState() => _BadcDetailsState();
}

class _BadcDetailsState extends State<BadcDetails> {
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
        title: Text(
          'বিএডিসি\'র সম্পর্কে',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CustomExpansionTileWidget(
              //   tileColor: colorDeepGreen,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: ScaffoldBackGroundColor,
              //             borderRadius: BorderRadius.circular(10)),
              //         height: 40,
              //         width: double.infinity,
              //         child: Text('বিএডিসি\'র পরিচিতি'),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 20,
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //         decoration: BoxDecoration(
              //             color: ScaffoldBackGroundColor,
              //             borderRadius: BorderRadius.circular(5)),
              //         height: 40,
              //         width: double.infinity,
              //         child: Text('বিএডিসি\'র পরিচিতি'),
              //       ),
              //     ),
              //   ],
              //   iconPath: "assets/employee.png",
              //   title: 'বিএডিসি\'র পরিচিতি',
              // ),
              CustomListTileWidget(
                tileColor: colorDeepGreen,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BadcIntro(),
                      ));
                },
                title: 'বিএডিসি\'র পরিচিতি',
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
                        builder: (context) => Vision(),
                      ));
                },
                title: 'ভিশন',
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
                        builder: (context) => Mision(),
                      ));
                },
                title: 'মিশন',
                iconPath: "assets/employee.png",
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomListTileWidget(
              //         onTap: () {},
              //         title: 'বিএডিসি\'র পরিচিতি',
              //         iconPath: "assets/employee.png",
              //       ),
              //       // child: CustomCard(
              //       //   color: primaryGreen,
              //       //   label: 'বিএডিসি\'র পরিচিতি',
              //       //   iconPath: "assets/employee.png",
              //       //   backgroundColor: Color(0xFFECE7A1),
              //       //   ontap: () {},
              //       // ),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Expanded(
              //       child: CustomCard(
              //         color: primaryGreen,
              //         label: 'ভিশন',
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
              //         label: 'মিশন',
              //         iconPath: "assets/employee.png",
              //         backgroundColor: Color(0xFFECE7A1),
              //         ontap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => BadcDetails(),
              //             ),
              //           );
              //         },
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
