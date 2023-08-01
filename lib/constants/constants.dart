import 'package:flutter/material.dart';

class Constants {
  static const TR_LOCALE = Locale("tr", "TR");
  static const EN_LOCALE = Locale("en", "US");
  static const LANG_PATH = "assets/lang";
  static Color orangeColor = Colors.orange.shade600;
  static sizedBoxWithMidHeight(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 28,
    );
  }

  static sizedBoxWithTinyHeight(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 45,
    );
  }

  static TextStyle signInPageTextStyle() {
    return TextStyle(
        decoration: TextDecoration.none,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.grey.shade700,
        fontFamily: 'Montserrat.ttf');
  }

  static TextStyle defaultTextStyle() {
    return TextStyle(fontFamily: 'Montserrat.ttf');
  }

  static TextStyle signInPageTextStyleBold() {
    return const TextStyle(
        decoration: TextDecoration.none,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.orange,
        fontFamily: 'Montserrat.ttf');
  }
}
