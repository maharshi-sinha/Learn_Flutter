import 'package:flutter/material.dart';
import 'package:project1/ui_helper/util.dart';
import 'package:intl/intl_browser.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DashboardScreen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Select Date",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: (() async {
                    DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2026));

                    if (datePicked != null) {
                      print(
                          'Date Selected: ${datePicked.year}-${datePicked.month}-${datePicked.day}');
                    }
                  }),
                  child: Text("tap me")),
            ],
          ),
        ));
  }
}
