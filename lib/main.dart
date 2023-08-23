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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          child: Column(
            children: [
              Center(
                  child: Text(
                "Hello World!",
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              )),
              Image.asset("assets/images/Dash.png"),
            ],
          ),
        ),
      ),
    );
  }
}
