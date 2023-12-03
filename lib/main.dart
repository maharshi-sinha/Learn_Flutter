import 'package:flutter/material.dart';
import 'package:project1/ui_helper/util.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  callBack() {
    print("Clicked!!!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  // var arrColors = [
  //   Colors.red,
  //   Colors.green,
  //   Colors.blue,
  //   Colors.yellow,
  //   Colors.pink,
  //   Colors.purple,
  //   Colors.orange,
  //   Colors.brown
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        child: Column(
          children: [
            catItem(), //splitted into widget by making a class below
            Widget2(),
            widget3(),
            widget4(),
          ],
        ),
      ),
    );
  }
}

class catItem extends StatelessWidget {
  const catItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.red,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                  backgroundColor: Colors.yellowAccent,
                  backgroundImage: AssetImage('assets/images/Dash.png')),
            ),
          ),
        ),
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
                title: Text("Name"),
                subtitle: Text("Mobile No"),
                trailing: Icon(Icons.call),
              )),
          itemCount: 10,
        ),
      ),
    );
  }
}

class widget3 extends StatelessWidget {
  const widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          height: 200,
          color: Colors.yellowAccent,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(11.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.orange),
              ),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}

class widget4 extends StatelessWidget {
  const widget4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        color: Colors.purple,
      ),
    );
  }
}
