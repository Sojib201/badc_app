import 'dart:ffi';

import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double? iconSize;
  final Color? color;
  final Color? iconColor;
  final VoidCallback? ontap;
  final String? iconPath;
  final String? label;
  final Color? backgroundColor;

  const CustomCard(
      {this.ontap,
      this.color,
      this.iconPath,
      this.label,
      this.backgroundColor,
      this.iconColor,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(top: 12),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.0,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Image.asset(
                  height: iconSize,
                  width: iconSize,
                  iconPath!,
                  color: iconColor,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  //maxLines: 2,
                  label!,
                  style: TextStyle(
                      color: ScaffoldBackGroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  //style: TEXTSTYLE_CardText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
