import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wildpoly/constants/constants.dart';
import 'package:wildpoly/constants/locale_keys.g.dart';
import 'package:wildpoly/constants/string_extensions.dart';

import 'package:wildpoly/view/sign_up_verify.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ꮤ',
                    style: TextStyle(
                        color: Constants.orangeColor,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'ildpoly',
                    style: TextStyle(
                        color: Constants.orangeColor,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Constants.sizedBoxWithMidHeight(context),
            const Center(
              child: Text(
                '𝑳𝒐𝒈𝒊𝒏',
                style: TextStyle(fontSize: 28),
              ),
            ),
            Form(
                child: Column(
              children: [
                Constants.sizedBoxWithMidHeight(context),
                TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: Constants.startInputDecoration(
                        LocaleKeys.login_mobileNum.locale)),
                Constants.sizedBoxWithTinyHeight(context),
                TextFormField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _passwordVisible
                                ? FontAwesomeIcons.eye
                                : FontAwesomeIcons.solidEyeSlash,
                            size: 20,
                            color: Constants.orangeColor),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.all(14),
                      hintText: LocaleKeys.login_password.locale,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Constants.orangeColor, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide())),
                ),
              ],
            )),
            Constants.sizedBoxWithVeryTinyHeight(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                            text: LocaleKeys.login_forgotPass.locale,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpVerifyPage(),
                                  )),
                            style: TextStyle(
                              color: Constants.orangeColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ))
                      ]),
                ),
              ],
            ),
            Constants.sizedBoxWithTinyHeight(context),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(300, 42)),
                    backgroundColor:
                        MaterialStateProperty.all(Constants.orangeColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {},
                child: Text(
                  LocaleKeys.login_login.locale,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
                )),
            Constants.sizedBoxWithMidHeight(context),
            Text(
              LocaleKeys.login_orLogin.locale,
              style: TextStyle(fontSize: 16),
            ),
            Constants.sizedBoxWithTinyHeight(context),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.squareFacebook,
                        color: Constants.orangeColor,
                        size: 48,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.squareTwitter,
                        color: Constants.orangeColor,
                        size: 48,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.squareInstagram,
                        color: Constants.orangeColor,
                        size: 48,
                      )),
                ]),
            Spacer(),
            RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                        text: "${LocaleKeys.login_dontHaveAc.locale} ",
                        style: Constants.signInPageTextStyle),
                    TextSpan(
                        text: LocaleKeys.login_register.locale,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUpVerifyPage(),
                              )),
                        style: Constants.signInPageTextStyleBold)
                  ]),
            ),
            Constants.sizedBoxWithTinyHeight(context)
          ],
        ),
      ),
    );
  }
}
