import 'package:badc_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'loginScreen.dart';

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
        backgroundColor: primaryGreen,
        centerTitle: true,
        title: Text(
          'বি‌ডি‌সি‌\'র সম্পর্কে',
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
                      label: 'বি‌ডি‌সি‌\'র পরিচিতি',
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
                      label: 'ভিশন',
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
                      label: 'মিশন',
                      iconPath: "assets/employee.png",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BadcDetails(),
                          ),
                        );
                      },
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
