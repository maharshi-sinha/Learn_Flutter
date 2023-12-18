import 'package:flutter/material.dart';

class cprr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return cprrState();
  }
}

class cprrState extends State<cprr> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip RRect"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.white,
        ])),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blueGrey,
              child: Center(
                  child: Text("You can add image here",
                      style: TextStyle(fontSize: 25, color: Colors.white))),
            ),
          ),
        ),
      ),
    );
  }
}
