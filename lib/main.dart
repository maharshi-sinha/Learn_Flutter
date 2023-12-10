import 'package:flutter/material.dart';
import 'package:project1/screen/IntroScreen.dart';
import 'package:project1/screen/SplashScreen.dart';
import 'package:project1/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: SplashScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<DashboardScreen> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Dashboard")),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text);
                            var no2 = int.parse(no2Controller.text);
                            var sum = no1 + no2;
                            result = "The Sum of $no1 and $no2 is $sum";

                            setState(() {});
                          },
                          child: Text("Add"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text);
                            var no2 = int.parse(no2Controller.text);
                            var diff = no1 - no2;
                            result = "The difference of $no1 and $no2 is $diff";

                            setState(() {});
                          },
                          child: Text("Subtract"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text);
                            var no2 = int.parse(no2Controller.text);
                            var multi = no1 * no2;
                            result =
                                "The multiplication of $no1 and $no2 is $multi";

                            setState(() {});
                          },
                          child: Text("Multiply"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text);
                            var no2 = int.parse(no2Controller.text);
                            var divide = no1 / no2;
                            result =
                                "The number $no1 and $no2 can be divided, ${divide.toStringAsFixed(2)} times";

                            setState(() {});
                          },
                          child: Text("Divide"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      result,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 5, 88, 155)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
