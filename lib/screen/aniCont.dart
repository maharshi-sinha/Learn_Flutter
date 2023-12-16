import 'package:flutter/material.dart';

class aniCont extends StatefulWidget {
  @override
  State<aniCont> createState() => aniContState();
}

class aniContState extends State<aniCont> {
  var myOpactity = 1.0;

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated Opacity"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myOpactity,
                duration: Duration(seconds: 1),
                curve: Curves.elasticInOut,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isVisible) {
                        myOpactity = 0.0;
                        isVisible = false;
                      } else {
                        myOpactity = 1.0;
                        isVisible = true;
                      }
                    });
                  },
                  child: Text("Animate"))
            ],
          ),
        ));
  }
}
