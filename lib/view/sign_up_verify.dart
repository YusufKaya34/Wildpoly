import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wildpoly/constants/constants.dart';
import 'package:wildpoly/constants/locale_keys.g.dart';
import 'package:wildpoly/constants/string_extensions.dart';
import 'package:wildpoly/view/start.dart';

class SignUpVerifyPage extends StatefulWidget {
  const SignUpVerifyPage({super.key});

  @override
  State<SignUpVerifyPage> createState() => _SignUpVerifyPageState();
}

class _SignUpVerifyPageState extends State<SignUpVerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Constants.orangeColor,
        centerTitle: true,
        title: Text(
          LocaleKeys.login_register.locale,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1.5),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    initialValue: '+90',
                    keyboardType: TextInputType.phone,
                    decoration: Constants.signUpVerifyInputDecoration(
                      LocaleKeys.login_mobileNum.locale,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: Constants.signUpVerifyInputDecoration(
                      LocaleKeys.login_fullName.locale,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: Constants.signUpVerifyInputDecoration(
                      LocaleKeys.login_email.locale,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            RichText(
              text: TextSpan(
                //  style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: LocaleKeys.login_byRegister.locale,
                    style: Constants.signInPageTextStyle,
                  ),
                  TextSpan(
                    text: ' ${LocaleKeys.login_termsOf.locale}',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const StartPage(),
                            ),
                          ),
                    style: Constants.signInPageTextStyleBold,
                  ),
                  TextSpan(
                    text: LocaleKeys.login_byRegister.locale.length > 15
                        ? ''
                        : ' hükümlerini kabul etmektesiniz.',
                    style: Constants.signInPageTextStyle,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Constants.orangeColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                minimumSize: MaterialStatePropertyAll(
                  Size(
                    MediaQuery.of(context).size.width,
                    50,
                  ),
                ),
              ),
              child: Text(
                LocaleKeys.login_register.locale,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            Text(
              LocaleKeys.login_orLogin.locale,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(
              flex: 6,
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
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: '${LocaleKeys.login_alreadyHaveAc.locale} ',
                    style: Constants.signInPageTextStyle,
                  ),
                  TextSpan(
                    text: LocaleKeys.login_login.locale,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const StartPage(),
                            ),
                          ),
                    style: Constants.signInPageTextStyleBold,
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
