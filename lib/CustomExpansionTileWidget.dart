import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class CustomExpansionTileWidget extends StatelessWidget {
  final String? title;
  final String? iconPath;

  final Color tileColor;
  final Color iconColor;
  final List<Widget> children;

  CustomExpansionTileWidget({
    this.title,
    this.iconPath,
    this.tileColor = Colors.white,
    this.iconColor = Colors.black,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 2,
          ),
        ],
      ),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFFECE7A1),
          child: ImageIcon(
            AssetImage(iconPath!),
            color: iconColor,
            size: 30,
          ),
        ),
        title: Text(
          title!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ScaffoldBackGroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconColor: ScaffoldBackGroundColor,
        collapsedIconColor: ScaffoldBackGroundColor,
        children: children,
      ),
    );
  }
}
