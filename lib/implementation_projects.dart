import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomCard.dart';

class ImplementationProjects extends StatefulWidget {
  const ImplementationProjects({super.key});

  @override
  State<ImplementationProjects> createState() => _ImplementationProjectsState();
}

class _ImplementationProjectsState extends State<ImplementationProjects> {
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
                      label: 'বিএডিসি\'র কর্তৃক বাস্তবায়নাধীন সকল প্রকল্প ও কর্মসূচির তালিকা',
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
