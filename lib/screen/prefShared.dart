import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class prefShared extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return prefSharedState();
  }
}

class prefSharedState extends State<prefShared> {
  var nameController = TextEditingController();
  var nameValue = "No value Saved";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Shared Preferences"))),
      body: Center(
        child: Container(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    )),
                SizedBox(height: 11),
                ElevatedButton(
                    onPressed: () async {
                      // var name = ;

                      var prefs = await SharedPreferences.getInstance();

                      prefs.setString("name", nameController.text.toString());
                    },
                    child: Text("Save")),
                SizedBox(height: 11),
                Text(nameValue),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString("name");
    nameValue = getName ?? "No value Saved";

    setState(() {});
  }
}
