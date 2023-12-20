import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project1/main.dart';
import 'package:project1/screen/LoginSP.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "Login";

  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff30cfd0), Color(0xff330867)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Splash Screen",
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontFamily: "FontMain"),
          )),
        ],
      ),
    );
  }

  void whereToGo() async {
    var sharedPrefs = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPrefs.getBool(KEYLOGIN);

    Timer(
      Duration(seconds: 3),
      () {
        if (isLoggedIn != null) {
          if (isLoggedIn) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          } else {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return LoginSP();
            }));
          }
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return LoginSP();
          }));
        }
      },
    );
  }
}
