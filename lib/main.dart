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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.purple.shade300,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2),
              boxShadow: [
                BoxShadow(
                  blurRadius: 51,
                  color: Colors.red,
                  spreadRadius: 11,
                ),
              ],
            ),
          ),
        ),
      ), 
    );
  }
}
