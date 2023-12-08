import 'package:flutter/material.dart';
import 'package:project1/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  callBack() {
    print("Clicked!!!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  // var arrColors = [
  //   Colors.red,
  //   Colors.green,
  //   Colors.blue,
  //   Colors.yellow,
  //   Colors.pink,
  //   Colors.purple,
  //   Colors.orange,
  //   Colors.brown
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 11,
              right: 21,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
