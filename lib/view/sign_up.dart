import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wildpoly/constants/constants.dart';
import 'package:wildpoly/view/sign_up_verify.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'ildpoly',
                    style: TextStyle(
                      color: Constants.orangeColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Constants.sizedBoxWithMidHeight(context),
            const Center(
              child: Text(
                'Sign up',
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
                          color: Constants.orangeColor,
                          width: 2,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
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
                          color: Constants.orangeColor,
                        ),
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
              ),
            ),
            Constants.sizedBoxWithTinyHeight(context),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: const MaterialStatePropertyAll(Size(300, 42)),
                backgroundColor:
                    MaterialStateProperty.all(Constants.orangeColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpVerifyPage(),
                ),
              ),
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
