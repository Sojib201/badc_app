import 'package:badc_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'loginScreen.dart';

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
        backgroundColor: primaryGreen,
        centerTitle: true,
        title: Text(
          'অফিস এবং বিভিন্ন স্থানসমূহ',
          style: TextStyle(color: ScaffoldBackGroundColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      color: primaryGreen,
                      label: 'মাঠ পর্যায়ের বিভিন্ন অফিস ও স্থাপনাসমূহের জিও লোকেশনসহ ঠিকানা',
                      iconPath: "assets/employee.png",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {},
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomCard(
                      color: primaryGreen,
                      label: 'অফিস প্রধানসহ কর্মরত জনবলের তথ্য',
                      iconPath: "assets/employee.png",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      color: primaryGreen,
                      label: 'অফিসের কার্যক্রমসহ বিস্তারিত তথ্য',
                      iconPath: "assets/employee.png",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
