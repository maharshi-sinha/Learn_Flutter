import 'package:flutter/material.dart';
import 'package:project1/ui_helper/util.dart';

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
        body: Stack(
          children: [
            Container(
              // color: Colors.blue,
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(10, 10))
                  ]),
            ),
            Positioned(
              top: 30,
              left: 40,
              right: 40,
              bottom: 30,
              child: Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(10, 5))
                    ]),
              ),
            ),
          ],
        ));
  }
}
