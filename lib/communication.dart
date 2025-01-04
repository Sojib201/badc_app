import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';

class Communication extends StatefulWidget {
  const Communication({super.key});

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
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
                      label:
                          'বিএডিসি\'র কর্মরত কর্মকর্তাদের সাথে যোগাযোগ সংক্রান্ত \'টেলিফোন ডিরেক্টরি\' এ্যাপস্ থাকবে',
                      iconPath: "",
                      backgroundColor: Color(0xFFECE7A1),
                      ontap: ()  {},
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
