import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/FirstScreen.dart';
import 'package:project1/screen/IntroScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return FirstScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.blue.shade500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Learn Flutter",
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "FontMain"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Text(" ~By Maharshi",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: "FontMain")),
            ),
          ],
        ),
      ),
    );
  }
}
