import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wildpoly/view/home.dart';
import 'package:wildpoly/view/start.dart';
import 'package:wildpoly/viewmodel/user_model.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);
    if (userModel.state == ViewState.idle) {
      if (userModel.user == null) {
        return const StartPage();
      } else {
        return const HomePage(/*user: userModel.user*/);
      }
    } else {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
