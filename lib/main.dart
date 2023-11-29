import 'package:flutter/material.dart';
import 'package:project1/ui_helper/util.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var arrNames = [
    //   'Apple',
    //   'Banana',
    //   'Orange',
    //   'Mango',
    //   'Pineapple',
    //   'Grapes',
    //   'Watermelon',
    //   'Papaya',
    //   'Guava',
    //   'Kiwi',
    //   'Pomegranate',
    //   'Strawberry',
    //   'Cherry',
    //   'Lemon',
    //   'Peach',
    //   'Avocado',
    //   'Blackberry',
    //   'Blueberry',
    //   'Coconut',
    //   'Cranberry',
    //   'Grapefruit',
    //   'Lychee',
    //   'Raspberry',
    // ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard Screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Card(
                elevation: 5,
                shadowColor: Colors.orange,
                child: Text(
                  "Hello World",
                  style: TextStyle(fontSize: 22),
                )),
          ),
        ));
  }
}
