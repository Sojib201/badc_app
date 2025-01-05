import 'package:badc_app/loginScreen.dart';
import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

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
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: ScaffoldBackGroundColor,
        child: Column(
          children: [
            DrawerHeader(
              margin: EdgeInsets.only(left: 60, right: 60),
              child: Image.asset(
                "assets/logo.png",
                //height: 20,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.home, color: colorGolden),
              title: Text(
                'হোম',
                style:
                    TextStyle(color: primaryGreen, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: colorGolden,
              ),
              title: Text(
                'প্রোফাইল',
                style:
                    TextStyle(color: primaryGreen, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: colorGolden),
              title: Text(
                'সেটিংস',
                style:
                    TextStyle(color: primaryGreen, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: colorGolden),
              title: Text(
                'লগআউট',
                style:
                    TextStyle(color: primaryGreen, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'App version 2024/01/05',
                  style:
                      TextStyle(color: primaryGreen, fontWeight: FontWeight.bold),
                ),
              ),
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

        title: SizedBox(
          height: 25,
          child: Marquee(
            text: 'বাংলাদেশ কৃষি উন্নয়ন কর্পোরেশন',
            style: TextStyle(color: ScaffoldBackGroundColor),
            scrollAxis: Axis.horizontal,
            blankSpace: 300,
            velocity: 50.0,
          ),
        ),

        // title: Text(
        //   'বাংলাদেশ কৃষি উন্নয়ন কর্পোরেশন',
        //   style: TextStyle(color: ScaffoldBackGroundColor),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: ScaffoldBackGroundColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 2,
                    //offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: primaryGreen),
                  hintText: 'অনুসন্ধান করুন...',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
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
                            label: 'অফিস এবং বিভিন্ন\nস্থানসমূহ',
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
                            label: 'ইনোভেশন কার্যক্রম \nও অর্জনসমূহ',
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
                            label: 'বাস্তবায়নী প্রকল্প \nও কার্যক্রম',
                            iconPath: "assets/agricultural.png",
                            backgroundColor: Color(0xFFECE7A1),
                            ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ImplementationProjects(),
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
            )
          ],
        ),
      ),
    );
  }
}
