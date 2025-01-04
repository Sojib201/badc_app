import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<feedback> {
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
                      label: 'বিভিন্ন পরামর্শ  ',
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
                      label: 'সচরাচর জিজ্ঞাসার জন্য এটি একটি প্লাটফর্ম',
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
    );
  }
}
