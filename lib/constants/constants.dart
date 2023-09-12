import 'package:flutter/material.dart';

class Constants {
  static const TR_LOCALE = Locale('tr', 'TR');
  static const EN_LOCALE = Locale('en', 'US');
  static const LANG_PATH = 'assets/lang';
  static Color orangeColor = const Color(0xff240046);
  static SizedBox sizedBoxWithMidHeight(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 28,
    );
  }

  static SizedBox sizedBoxWithHighHeight(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 10,
    );
  }

  static SizedBox sizedBoxWithTinyHeight(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 45,
    );
  }

  static SizedBox sizedBoxWithVeryTinyHeight(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 70,
    );
  }

  static TextStyle signInPageTextStyle = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: Colors.grey.shade700,
    fontFamily: 'Montserrat.ttf',
  );

  static TextStyle defaultTextStyle =
      const TextStyle(fontFamily: 'Montserrat.ttf', fontSize: 17);

  static TextStyle signInPageTextStyleBold = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: orangeColor,
    fontFamily: 'Montserrat.ttf',
  );
  static InputDecoration signUpVerifyInputDecoration(
    String hintText,
  ) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(14),
      hintStyle: TextStyle(color: Colors.grey.shade800),
      hintText: hintText,
      hoverColor: Constants.orangeColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Constants.orangeColor, width: 2),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Constants.orangeColor, width: 2),
      ),
    );
  }

  static InputDecoration startInputDecoration(
    String hintText,
  ) {
    return InputDecoration(
      hintStyle: TextStyle(color: Colors.grey.shade800),
      isDense: true,
      contentPadding: const EdgeInsets.all(14),
      hintText: hintText,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Constants.orangeColor, width: 2),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
