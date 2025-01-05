import 'package:flutter/material.dart';

const colorGolden = Color.fromRGBO(184, 150, 63, 1.0);
const lightGolden=Color(0xFFECE7A1);
const primaryColor = Color.fromRGBO(120, 118, 51, 1.0);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorBlue = Color.fromRGBO(52, 152, 219, 1.0);
const colorOrange = Color.fromRGBO(230, 126, 34, 1.0);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1.0);
const colorLightGray = Color.fromRGBO(135, 142, 150, 1.0);
const colorDeepGreen = Color.fromRGBO(14, 126, 73, 1.0);
const primaryGreen = Color.fromRGBO(69, 141, 106, 1.0);
//const primaryGreen = Colors.green;
const colorBlack = Colors.black;
const ScaffoldBackGroundColor = Color.fromRGBO(250, 249, 239, 1.0);


TextStyle Head1Text(textColor) {
  return TextStyle(
    color: colorGolden,
    fontSize: 22,
    fontFamily: 'popins',
    fontWeight: FontWeight.w700,
  );
}

TextStyle Head6Text(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 16,
    fontFamily: 'popins',
    fontWeight: FontWeight.w400,
  );
}

TextStyle HeadText7(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 14,
    fontFamily: 'popins',
    fontWeight: FontWeight.bold,
  );
}

TextStyle HeadText6(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 13,
    fontFamily: 'popins',
    fontWeight: FontWeight.w400,
  );
}

TextStyle HeadText9(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 9,
    fontFamily: 'popins',
    fontWeight: FontWeight.w400,
  );
}

InputDecoration PasswordInputDeceration(label, hinttext, Widget icon, icon1) {
  return InputDecoration(
    prefixIcon: icon,
    suffixIcon: icon1,
    filled: true,
    fillColor: colorWhite.withOpacity(0.2),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorLightGray, width: 3),
    ),
    labelText: label,
    hintText: hinttext,
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorLightGray, width: 2),
    ),
    //fillColor: colorWhite,
    //filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
  );
}

InputDecoration EmailInputDeceration1(label, hinttext, Widget icon) {
  return InputDecoration(
    prefixIcon: icon,
    filled: true,
    fillColor: colorWhite.withOpacity(0.2),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorLightGray, width: 3),
    ),
    labelText: label,
    hintText: hinttext,
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorLightGray, width: 2),
    ),
    //fillColor: colorWhite,
    //filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    padding: EdgeInsets.all(4.5),
    //padding: EdgeInsets.only(left: 3, right: 3, top: 4, bottom: 5),
    //backgroundColor: Colors.green.shade600,
    backgroundColor: colorDeepGreen,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

TextStyle ButtonTextStyle() {
  return TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontFamily: 'poppins',
      fontWeight: FontWeight.bold);
}



Ink SuccessButtonChild(String ButtonText) {
  return Ink(
    decoration: BoxDecoration(
      //color: colorWhite,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 40,
      alignment: Alignment.center,
      child: Text(
        ButtonText,
        style: ButtonTextStyle(),
      ),
    ),
  );
}

ButtonStyle AppStatusButtonStyle(btnColor) {
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.zero,
    backgroundColor: btnColor,
  );
}
