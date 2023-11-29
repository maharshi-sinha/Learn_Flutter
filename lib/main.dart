import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DashboardScreen'),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.deepOrange, width: 2),
                          ),
                          suffixIcon: IconButton(
                            icon:
                                Icon(Icons.remove_red_eye, color: Colors.pink),
                            onPressed: () {
                              print("eye button Pressed");
                            },
                          )),
                    ),
                    Container(height: 11),
                    TextField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        suffixText: 'This is suffixText',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    ),
                    Container(height: 11),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        hintText: 'Disabled TextField, this is hintText',
                      ),
                    ),
                    Container(height: 11),
                    ElevatedButton(
                      onPressed: () {
                        String uEmail = emailController.text.toString();
                        String uPass = passController.text;

                        print("Email: $uEmail, Password: $uPass");
                      },
                      child: Text('Login'),
                    )
                  ],
                ))));
  }
}
