import 'package:flutter/material.dart';
import 'package:project1/main.dart';

class IntroScreen extends StatelessWidget {
  var nameFromFirstScreen;

  IntroScreen(this.nameFromFirstScreen); //Constructor same name as class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Intro Screen")),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome, $nameFromFirstScreen",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.normal,
                  fontFamily: "FontMain",
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DashboardScreen();
                      }),
                    );
                  },
                  child: Text("Next Page")),
            ],
          ),
        ),
      ),
    );
  }
}
