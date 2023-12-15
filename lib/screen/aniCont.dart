import 'package:flutter/material.dart';

class aniCont extends StatefulWidget {
  @override
  State<aniCont> createState() => aniContState();
}

class aniContState extends State<aniCont> {
  var _width = 200.0;
  var _height = 100.0;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                width: _width,
                height: _height,
                color: Colors.blueGrey,
                duration: Duration(seconds: 2)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;
                      flag = true;
                    }
                  });
                },
                child: Text("Animate")),
          ],
        ),
      ),
    );
  }
}
