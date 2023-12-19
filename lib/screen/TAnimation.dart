import 'package:flutter/material.dart';

class TAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TAnimationState();
  }
}

class TAnimationState extends State<TAnimation>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.orange, end: Colors.purple)
        .animate(animationController);

    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });

    animationController.forward();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
