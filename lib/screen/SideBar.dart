import 'dart:ffi';
import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?q=80&w=1894&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: Image.network(
                              "https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2NlbmVyeXxlbnwwfHwwfHx8MA%3D%3D")
                          .image,
                      fit: BoxFit.cover)),
              accountName: Text("Maharshi Sinha"),
              accountEmail: Text("abc123@gmail.com")),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favourites"),
            onTap: () => print("fav clicked"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () => print("profile clicked"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => print("settings clicked"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("share"),
            onTap: () => print("share clicked"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 25,
                height: 25,
                child: Center(
                  child: Text(
                    "3+",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            title: Text("Notification"),
            onTap: () => print("notifi clicked"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () => print("logout clicked"),
          ),
        ],
      ),
    );
  }
}
