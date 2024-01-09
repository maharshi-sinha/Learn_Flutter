import 'dart:ffi';
import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return signUpState();
  }
}

class signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _Emailcontroller = TextEditingController();
    TextEditingController _Passwordcontroller = TextEditingController();
    TextEditingController _CPasswordcontroller = TextEditingController();

    void createAccount() async {
      String email = _Emailcontroller.text.toString().trim();
      String password = _Passwordcontroller.text.toString().trim();
      String cpassword = _CPasswordcontroller.text.toString().trim();

      if (email == "" || password == "" || cpassword == "") {
        print("Please fill all the fields");
      } else if (password != cpassword) {
        print("Password do not match!");
      } else {
        //Creating new Account
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: password);
          print("User Created Successfully");
          Navigator.pop(context);
          // if(UserCredential.user != null){
          //   print("Account Created Successfully");
          // }
        } on FirebaseAuthException catch (ex) {
          print(ex.code.toString());
        }
        //Snackbar
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sign up Page")),
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
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: _Emailcontroller,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _Passwordcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _CPasswordcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  createAccount();
                },
                child: Text("Create Account"))
          ],
        ),
      ),
    );
  }
}
