import 'package:flutter/material.dart';

class lvsv extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return lvsvState();
  }
}

class lvsvState extends State<lvsv> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView and ScrollView"),
      ),
      body: ListWheelScrollView(
        children: arrIndex
            .map((value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(
                      child: Text(
                        "$value",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                  ),
                ))
            .toList(),
        itemExtent: 200,
      ),
    );
  }
}
