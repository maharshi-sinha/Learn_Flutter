import 'package:flutter/material.dart';
import 'package:project1/FirstScreen.dart';
import 'package:project1/screen/IntroScreen.dart';
import 'package:project1/screen/LoginSP.dart';
import 'package:project1/screen/SplashScreen.dart';
import 'package:project1/screen/TAnimation.dart';
import 'package:project1/screen/aniCont.dart';
import 'package:project1/screen/heroAnimation.dart';
import 'package:project1/screen/cprr.dart';
import 'package:project1/screen/prefShared.dart';
import 'package:project1/screen/rippleAni.dart';
import 'package:project1/screen/uiList.dart';
import 'package:project1/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomepageState();
}

class HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Shared Preferences example"))),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff30cfd0), Color(0xff330867)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Icon(
              Icons.home,
              size: 100,
              color: Colors.white70,
            )),
          ],
        ),
      ),
    );
  }
}
