import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';

class Innovation extends StatefulWidget {
  const Innovation({super.key});

  @override
  State<Innovation> createState() => _InnovationState();
}

class _InnovationState extends State<Innovation> {
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
                      label: 'বিভিন্ন ইনোভেটিভ কার্যক্রম',
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
                      label: 'বি‌ডি‌সি‌\'র সহজিকৃত/ডিজিটালাইজড সেবাসমূহের তালিকা ও লিংক',
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
                      label: 'কৃষিক্ষেত্রে বিএডিসি\'র অর্জনসমূহ',
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
