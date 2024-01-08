import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/screen/email_auth/signUp.dart';

class loginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginScreenState();
  }
}

class loginScreenState extends State<loginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login Page")),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xfffdfcfb), Color(0xffe2d1c3)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 70,
              ),
            )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signUp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
