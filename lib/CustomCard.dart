import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color? color;
  final VoidCallback? ontap;
  final String? iconPath;
  final String? label;
  final Color? backgroundColor;
  const CustomCard(
      {this.ontap,
      this.color,
      this.iconPath,
      this.label,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
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
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(
                  iconPath!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              label!,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              //style: TEXTSTYLE_CardText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
