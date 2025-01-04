import 'package:badc_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'loginScreen.dart';

class SeedsService extends StatefulWidget {
  const SeedsService({super.key});

  @override
  State<SeedsService> createState() => _SeedsServiceState();
}

class _SeedsServiceState extends State<SeedsService> {
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
          'হোম পেজ',
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
                      label: 'বি‌ডি‌সি‌\'র সম্পর্ক (ভিশন এবং মিশন)',
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
                      label: 'বি‌ডি‌সি‌\'র সেবাসমূহ',
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
                      label: 'অফিস এবং বিভিন্ন স্থানসমূহ (With Geo Location)',
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
                      label: 'ইনোভেশন কার্যক্রম ও অর্জনসমূহ',
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
                      label: 'বাস্তবায়নী প্রকল্প ও কার্যক্রম',
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
                      label: 'cfgbdf',
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
                      label: 'ghkgyku',
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
                      label: 'hlhlhklol.',
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
                      label: 'tyt',
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
                      label: '3',
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
                      label: '34',
                      iconPath: "",
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

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('১.বি‌ডি‌সি‌\'র সম্পর্ক (ভিশন এবং মিশন)'),
      //
      //       ),
      //       SizedBox(height: 10,),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('২. বি‌ডি‌সি‌\'র সেবাসমূহ'),
      //
      //       ),
      //       SizedBox(height: 10,),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('৩.অফিস এবং বিভিন্ন স্থানসমূহ (With Geo Location)'),
      //
      //       ),
      //       SizedBox(height: 10,),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('৪. ইনোভেশন কার্যক্রম ও অর্জনসমূহ'),
      //
      //       ),
      //       SizedBox(height: 10,),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('৫.বাস্তবায়নী প্রকল্প ও কার্যক্রম'),
      //
      //       ),
      //       SizedBox(height: 10,),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('৬.যোগাযোগ'),
      //
      //       ),
      //       SizedBox(height: 10,),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('৭.ফিডব্যাক'),
      //
      //       ),
      //
      //     ],
      //   ),
      // ),
    );
  }
}
