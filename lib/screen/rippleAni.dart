import 'package:flutter/material.dart';

class rippleAni extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return rippleAniState();
  }
}

class rippleAniState extends State<rippleAni>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Ripple Animation"))),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: listRadius
                .map(
                  (radius) => Container(
                    width: radius * _animationController.value,
                    height: radius * _animationController.value,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink
                            .withOpacity(1.0 - _animationController.value)),
                  ),
                )
                .toList(),
          ),
        ));
  }
}
