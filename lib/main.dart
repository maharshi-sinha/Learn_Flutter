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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 11),
                        height: 200,
                        width: 200,
                        color: Colors.amberAccent,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 11),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 11),
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(255, 241, 39, 157),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.orangeAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 92, 241, 167),
                )
              ],
            ),
          ),
        ));
  }
}
