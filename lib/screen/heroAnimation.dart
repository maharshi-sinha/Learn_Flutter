import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/screen/aniCont.dart';

class heroAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => heroAnimationState();
}

class heroAnimationState extends State<heroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => aniCont()));
            },
            child: Hero(
              tag: "Dashimage",
              child: Image.asset(
                "assets/images/Dash.png",
                width: 300,
                height: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
