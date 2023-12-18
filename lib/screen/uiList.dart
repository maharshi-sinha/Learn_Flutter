import 'package:flutter/material.dart';

class uiList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return uiListState();
  }
}

class uiListState extends State<uiList> {
  var arrData = [
    {'name': 'Maharshi', 'mobno': '1234567890', 'unread': '2'},
    {'name': 'Avi', 'mobno': '1234567890', 'unread': '1'},
    {'name': 'Anshdeep', 'mobno': '1234567890', 'unread': '8'},
    {'name': 'Suyash', 'mobno': '1234567890', 'unread': '6'},
    {'name': 'Kunal', 'mobno': '1234567890', 'unread': '2'},
    {'name': 'Anubhav', 'mobno': '1234567890', 'unread': '9'},
    {'name': 'Pranjal', 'mobno': '1234567890', 'unread': '1'},
    {'name': 'Daisy', 'mobno': '1234567890', 'unread': '3'},
    {'name': 'Aastha', 'mobno': '1234567890', 'unread': '0'},
    {'name': 'Prarthi', 'mobno': '1234567890', 'unread': '6'},
    {'name': 'Rishabh', 'mobno': '1234567890', 'unread': '7'}
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Mapping list to widgets")),
      body: Container(
        child: ListView(
            children: arrData
                .map(
                  (value) => ListTile(
                      leading: Icon(Icons.person),
                      title: Text(value['name']!),
                      subtitle: Text(value['mobno']!),
                      trailing: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.lightGreen[300],
                        child: Text(
                          value['unread']!,
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                )
                .toList()),
      ),
    );
  }
}
