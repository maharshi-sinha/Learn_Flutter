import 'package:flutter/material.dart';

class SignInWithPhone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignInWithPhoneState();
  }
}

class SignInWithPhoneState extends State<SignInWithPhone> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sign In with Phone")),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfffdfcfb), Color(0xffe2d1c3)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: "Phone",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Sign In"))
            ],
          ),
        ),
      ),
    );
  }
}
