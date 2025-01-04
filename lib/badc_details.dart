import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';

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
                      label: 'বি‌ডি‌সি‌\'র পরিচিতি',
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
                      label: 'ভিশন',
                      iconPath: "",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: () async {},
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
                      label: 'মিশন',
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
