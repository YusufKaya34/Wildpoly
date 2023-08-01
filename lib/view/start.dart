import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ꮤ',
                    style: TextStyle(
                        color: Colors.teal.shade500,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'ildpoly',
                    style: TextStyle(
                        color: Colors.teal.shade500,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Form(
                child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 28,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(14),
                      hintText: 'Enter a Phone Number',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1000),
                          borderSide: BorderSide())),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 45,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(14),
                      hintText: 'Şifre',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                ),
              ],
            )),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Şifremi unuttum',
                      style:
                          TextStyle(color: Colors.teal.shade500, fontSize: 15),
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(300, 40)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal.shade500),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)))),
                onPressed: () {},
                child: Text(
                  'GİRİŞ YAP',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                )),
            Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
