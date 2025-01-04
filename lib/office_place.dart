import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';

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
                      label: 'মাঠ পর্যায়ের বিভিন্ন অফিস ও স্থাপনাসমূহের জিও লোকেশনসহ ঠিকানা',
                      iconPath: "",
                      backgroundColor: Color(0xFFECD2A1),
                      ontap: () {},
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomCard(
                      label: 'অফিস প্রধানসহ কর্মরত জনবলের তথ্য',
                      iconPath: "",
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
                      label: 'অফিসের কার্যক্রমসহ বিস্তারিত তথ্য',
                      iconPath: "",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () async {},
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
