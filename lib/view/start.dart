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
  TextEditingController myTextController = TextEditingController();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            const Spacer(
              flex: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /* Text(
                  'Ꮤ',
                  style: TextStyle(
                    color: Constants.orangeColor,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),*/
                Text(
                  'Ꮤildpoly',
                  style: TextStyle(
                    color: Constants.orangeColor,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            /*  const Center(
              child: Text(
                '𝑳𝒐𝒈𝒊𝒏',
                style: TextStyle(fontSize: 28),
              ),
            ),*/
            const Spacer(
              flex: 25,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: Constants.startInputDecoration(
                      LocaleKeys.login_mobileNum.locale,
                    ),
                  ),
                  //Constants.sizedBoxWithVeryTinyHeight(context),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: myTextController,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.solidEyeSlash,
                          size: 20,
                          color: _passwordVisible
                              ? Constants.orangeColor
                              : Colors.grey,
                        ),
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
                          color: Constants.orangeColor,
                          width: 2,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    //     style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: LocaleKeys.login_forgotPass.locale,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SignUpVerifyPage(),
                                ),
                              ),
                        style: TextStyle(
                          color: Constants.orangeColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(Size(360, 45)),
                //minimumSize: const MaterialStatePropertyAll(Size(355, 42)),
                backgroundColor:
                    MaterialStateProperty.all(Constants.orangeColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                LocaleKeys.login_login.locale,
                style: const TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(flex: 10),
            Text(
              LocaleKeys.login_orLogin.locale,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
            ),
            const Spacer(
              flex: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.squareFacebook,
                    color: Constants.orangeColor,
                    size: 48,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.squareTwitter,
                    color: Constants.orangeColor,
                    size: 48,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.squareInstagram,
                    color: Constants.orangeColor,
                    size: 48,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 10,
            ),
            RichText(
              text: TextSpan(
                // style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: '${LocaleKeys.login_dontHaveAc.locale} ',
                    style: Constants.signInPageTextStyle,
                  ),
                  TextSpan(
                    text: LocaleKeys.login_register.locale,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpVerifyPage(),
                            ),
                          ),
                    style: Constants.signInPageTextStyleBold,
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
