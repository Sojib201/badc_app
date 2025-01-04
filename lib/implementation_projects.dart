import 'package:badc_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'loginScreen.dart';

class ImplementationProjects extends StatefulWidget {
  const ImplementationProjects({super.key});

  @override
  State<ImplementationProjects> createState() => _ImplementationProjectsState();
}

class _ImplementationProjectsState extends State<ImplementationProjects> {
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
          'বাস্তবায়নী প্রকল্প ও কার্যক্রম',
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
                      label: 'বিএডিসি\'র কর্তৃক বাস্তবায়নাধীন সকল প্রকল্প ও কর্মসূচির তালিকা',
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
