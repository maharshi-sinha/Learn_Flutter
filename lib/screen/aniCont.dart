import 'package:flutter/material.dart';

class aniCont extends StatefulWidget {
  @override
  State<aniCont> createState() => aniContState();
}

class aniContState extends State<aniCont> {
  var _width = 200.0;
  var _height = 100.0;

  Decoration MyDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2.0),
    color: Colors.blueGrey,
  );

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
                decoration: MyDecor,
                curve: Curves.slowMiddle,
                duration: Duration(seconds: 2)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      MyDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: Colors.orange,
                      );
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;
                      MyDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Colors.blueGrey,
                      );
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
