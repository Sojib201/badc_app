import 'package:flutter/material.dart';

import 'CustomCard.dart';
import 'badc_details.dart';
import 'badc_sheba.dart';
import 'communication.dart';
import 'feedback.dart';
import 'implementation_projects.dart';
import 'innovation.dart';
import 'office_place.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('হোম পেজ'),
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
                      label: 'বি‌ডি‌সি‌\'র সম্পর্কে',
                      iconPath: "assets/details.png",
                      backgroundColor: Color(0xFFECD2A1),
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BadcDetails(),
                            ));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomCard(
                      label: 'বি‌ডি‌সি‌\'র সেবাসমূহ',
                      iconPath: "assets/customer-service.png",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sheba(),
                            ));
                      },
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
                      label: 'অফিস এবং বিভিন্ন স্থানসমূহ',
                      iconPath: "assets/location-pin.png",
                      backgroundColor: Color(0xFFECD2A1),
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OfficePlace(),
                            ));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomCard(
                      label: 'ইনোভেশন কার্যক্রম ও অর্জনসমূহ',
                      iconPath: "assets/agriculture.png",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Innovation(),
                            ));
                      },
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
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImplementationProjects(),
                            ));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomCard(
                      label: 'যোগাযোগ',
                      iconPath: "",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Communication(),
                            ));
                      },
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
                      label: 'ফিডব্যাক',
                      iconPath: "",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => feedback(),
                            ));
                      },
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
