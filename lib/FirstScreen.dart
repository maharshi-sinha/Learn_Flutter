import 'package:flutter/material.dart';
import 'package:project1/screen/IntroScreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen> {
  var Textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("FirstPage")),
      body: Container(
        color: Colors.blue.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text("Hello, Please Enter Your Name",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      fontFamily: "FontMain",
                      color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                controller: Textcontroller,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              IntroScreen(Textcontroller.text.toString())));
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
