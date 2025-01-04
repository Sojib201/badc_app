import 'package:badc_app/seeds_service.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';

class Sheba extends StatefulWidget {
  const Sheba({super.key});

  @override
  State<Sheba> createState() => _ShebaState();
}

class _ShebaState extends State<Sheba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                      label: 'বীজ ও উদ্যান সংক্রান্ত সেবা',
                      iconPath: "",
                      backgroundColor: Color(0xFFECD2A1),
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SeedsService(),
                            ));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomCard(
                      label: 'সার সংক্রান্ত সেবা',
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
                      label: 'সেচ সংক্রান্ত সেবা',
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
                      label: 'দাপ্তরিক অন্যান্য সেবা',
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
