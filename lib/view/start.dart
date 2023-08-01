import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wildpoly/constants/constants.dart';
import 'package:wildpoly/view/home.dart';

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
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(14),
                      hintText: 'Enter a Phone Number',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Constants.orangeColor, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide())),
                ),
                Constants.sizedBoxWithTinyHeight(context),
                TextFormField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
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
                      hintText: 'Password',
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
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Your Password?',
                      style:
                          TextStyle(color: Constants.orangeColor, fontSize: 15),
                    ),
                  ],
                )),
            Constants.sizedBoxWithTinyHeight(context),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(300, 42)),
                    backgroundColor:
                        MaterialStateProperty.all(Constants.orangeColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
                )),
            Constants.sizedBoxWithMidHeight(context),
            const Text(
              'Or Login with',
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
                        text: "Don't have account? ",
                        style: Constants.signInPageTextStyle()),
                    TextSpan(
                        text: "Sign up",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              )),
                        style: Constants.signInPageTextStyleBold())
                  ]),
            ),
            Constants.sizedBoxWithTinyHeight(context)
          ],
        ),
      ),
    );
  }
}
