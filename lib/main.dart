import 'package:flutter/material.dart';
import 'package:project1/ui_helper/util.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatefulWidget {
  const FlutterApp({super.key});

  @override
  State<FlutterApp> createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
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
  DashboardScreen({super.key});

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
        body: ElevatedButton(
          child: Text("Click Me"),
          onPressed: callBack,
        ));
  }
}
