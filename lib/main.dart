import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Containers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 235, 113, 32)),
        useMaterial3: true,
      ),
      home: Center(
        child: const MyHomePage(title: 'Flutter Containers Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      //taking dynamics data from here i.e. using var we're taking data from arrNames
      "Maharshi",
      "Flutter",
      "Dart",
      "Android",
      "iOS",
      "GitHub",
      "VSCodes"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            //you can also give paddings here
            arrNames[index],
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight
                    .w500), //instead of any text we're printing arrnames[index]
          );
        },
        itemCount: arrNames.length,
        //this is the length of the array (.length) for whole length of the array
        itemExtent: 100, //this is the size of the list
        scrollDirection: Axis.vertical, //this is the direction of the list
      ),
    );
  }
}
