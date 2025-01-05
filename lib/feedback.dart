import 'package:badc_app/style.dart';
import 'package:badc_app/suggestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'CustomListTileWidget.dart';
import 'badc_asking.dart';
import 'loginScreen.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<feedback> {
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
          'ফিডব্যাক',
          style: TextStyle(color: ScaffoldBackGroundColor),
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
                        builder: (context) => Suggestion(),
                      ));
                },
                title: 'বিভিন্ন পরামর্শ',
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
                        builder: (context) => BadcAsking(),
                      ));
                },
                title: 'সচরাচর জিজ্ঞাসার জন্য \nএটি একটি প্লাটফর্ম',
                iconPath: "assets/employee.png",
              ),

              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomCard(
              //         color: primaryGreen,
              //         label: 'বিভিন্ন পরামর্শ',
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
              //         label: 'সচরাচর জিজ্ঞাসার জন্য \nএটি একটি প্লাটফর্ম',
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
