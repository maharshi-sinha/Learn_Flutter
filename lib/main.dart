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
    //   'Pear',
    //   'Plum',
    //   'Apricot',
    //   'Avocado',
    //   'Blackberry',
    //   'Blueberry',
    //   'Coconut',
    //   'Cranberry',
    //   'Fig',
    //   'Grapefruit',
    //   'Honeydew',
    //   'Kumquat',
    //   'Lychee',
    //   'Nectarine',
    //   'Raspberry',
    // ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen"),
      ),
      body: Column(
        children: [
          Text(
            "Hello World!",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Colors.red),
          ),
          Text(
            "Hello World!",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "Hello World!",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Hello World!",
            style: mTextstyle11(textColor: Colors.purple),
          ),
        ],
      ),
    );
  }
}
