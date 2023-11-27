import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Apple',
      'Banana',
      'Orange',
      'Mango',
      'Pineapple',
      'Grapes',
      'Watermelon',
      'Papaya',
      'Guava',
      'Kiwi',
      'Pomegranate',
      'Strawberry',
      'Cherry',
      'Lemon',
      'Peach',
      'Pear',
      'Plum',
      'Apricot',
      'Avocado',
      'Blackberry',
      'Blueberry',
      'Coconut',
      'Cranberry',
      'Fig',
      'Grapefruit',
      'Honeydew',
      'Kumquat',
      'Lychee',
      'Nectarine',
      'Raspberry',
      'Tangerine',
      'Tomato',
      'Cantaloupe',
      'Durian',
      'Elderberry',
      'Gooseberry',
      'Jackfruit',
      'Mangosteen',
      'Rambutan',
      'Starfruit',
      'Tamarind',
      'Ugli Fruit',
      'Yuzu',
      'Zucchini'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${index + 1}", style: TextStyle(fontSize: 18)),
              title: Text(arrNames[index]),
              subtitle: Text("This is the subtitle"),
              trailing: Icon(Icons.add_circle_sharp),
              onTap: () {
                print("Tapped on ${arrNames[index]}");
              },
            );
          },
          itemCount: arrNames.length,
          //this is the length of the array (.length) for whole length of the array
          separatorBuilder: (context, index) {
            //availabe only in ListView.seperated works for seperating the items
            return Divider(
              height: 50,
              color: Colors.black,
              thickness: 1,
            );
          }),
    );
  }
}
