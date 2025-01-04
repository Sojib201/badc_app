import 'package:badc_app/loginScreen.dart';
import 'package:badc_app/style.dart';
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
      drawer: Drawer(
        backgroundColor: ScaffoldBackGroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('হোম'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('প্রোফাইল'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('সেটিংস'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('লগআউট'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      color: primaryGreen,
                      label: 'বি‌ডি‌সি‌\'র সম্পর্কে',
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
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomCard(
                      color: primaryGreen,
                      label: 'বি‌ডি‌সি‌\'র সেবাসমূহ',
                      iconColor: colorBlack,
                      iconPath: "assets/customer-service.png",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sheba(),
                          ),
                        );
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
                      color: primaryGreen,
                      label: 'অফিস এবং বিভিন্ন স্থানসমূহ',
                      iconPath: "assets/office-building.png",
                      backgroundColor: Color(0xFFECE7A1),
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
                      color: primaryGreen,
                      label: 'ইনোভেশন কার্যক্রম ও অর্জনসমূহ',
                      iconPath: "assets/innovation.png",
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
                      color: primaryGreen,
                      label: 'বাস্তবায়নী প্রকল্প ও কার্যক্রম',
                      iconPath: "assets/agricultural.png",
                      backgroundColor: Color(0xFFECE7A1),
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
                      color: primaryGreen,
                      label: 'যোগাযোগ',
                      iconPath: "assets/communication.png",
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
                      color: primaryGreen,
                      label: 'ফিডব্যাক',
                      iconSize: 50,
                      iconPath: "assets/feedback.png",
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
