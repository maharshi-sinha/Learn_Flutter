import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Apple',
      'Banana',
      'Orange',
      'Mango',
      'Pineapple',
      'Grapes',
      'Watermelon',
      'Papaya',
      'Guava',
      'Kiwi',
      'Pomegranate',
      'Strawberry',
      'Cherry',
      'Lemon',
      'Peach',
      'Pear',
      'Plum',
      'Apricot',
      'Avocado',
      'Blackberry',
      'Blueberry',
      'Coconut',
      'Cranberry',
      'Fig',
      'Grapefruit',
      'Honeydew',
      'Kumquat',
      'Lychee',
      'Nectarine',
      'Raspberry',
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard Screen"),
        ),
        body: Text(
          "Hello World",
          style: TextStyle(
              fontFamily: 'FontMain',
              fontSize: 35,
              fontWeight: FontWeight.w500),
        ));
  }
}
