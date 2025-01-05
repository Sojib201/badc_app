import 'package:badc_app/style.dart';
import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final String? title;

  final String? iconPath;
  final String? trailingIconPath;
  final VoidCallback onTap;
  final Color tileColor;
  final Color iconColor;

  CustomListTileWidget({
    this.title,
    this.iconPath,
    this.trailingIconPath,
    required this.onTap,
    this.tileColor = Colors.white,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onTap: onTap,
        tileColor: tileColor,
        leading: CircleAvatar(
          backgroundColor: Color(0xFFECE7A1),
          child: ImageIcon(
            AssetImage(iconPath!),
            color: iconColor,
            size: 30,
          ),
        ),
        title: Text(
          textAlign: TextAlign.center,
          title!,
          style: TextStyle(
              color: ScaffoldBackGroundColor, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: ScaffoldBackGroundColor,
        ));
  }
}
