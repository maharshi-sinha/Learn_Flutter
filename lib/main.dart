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
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen"),
      ),
      body: Row(
        children: [
          Container(
            width: 50,
            height: 100,
            color: Colors.blue,
          ),
          Expanded(
            //expanded widget fills the remaining space in the screen
            flex:
                10, //flex property is used to divide the space in terms of ratio you can say.
            child: Container(
              width: 50,
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex:
                2, //here we're dividing the space in 10(orange):2(purple) ratio
            child: Container(
              width: 50,
              height: 100,
              color: Colors.deepPurple,
            ),
          ),
          Container(
            width: 50,
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
