import 'dart:async';

import 'package:flutter/material.dart';

class aniCont extends StatefulWidget {
  @override
  State<aniCont> createState() => aniContState();
}

class aniContState extends State<aniCont> {
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      isFirst = false;
      reload();
    });
  }

  void reload() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: Duration(seconds: 2),
          firstChild: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          secondChild: Image.asset(
            "assets/images/Dash.png",
            width: 200,
            height: 200,
          ),
          crossFadeState:
              isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
    );
  }
}
