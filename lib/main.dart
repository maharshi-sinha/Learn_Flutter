import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project1/FirstScreen.dart';
import 'package:project1/screen/IntroScreen.dart';
import 'package:project1/screen/LoginSP.dart';
import 'package:project1/screen/SplashScreen.dart';
import 'package:project1/screen/TAnimation.dart';
import 'package:project1/screen/aniCont.dart';
import 'package:project1/screen/email_auth/loginScreen.dart';
import 'package:project1/screen/heroAnimation.dart';
import 'package:project1/screen/cprr.dart';
import 'package:project1/screen/imgPickr.dart';
import 'package:project1/screen/prefShared.dart';
import 'package:project1/screen/rippleAni.dart';
import 'package:project1/screen/uiList.dart';
import 'package:project1/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/screen/SideBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: (FirebaseAuth.instance.currentUser != null)
          ? HomePage()
          : loginScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomepageState();
}

class HomepageState extends State<HomePage> {
  void logOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.popUntil(context, (route) => route.isFirst);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        // drawer: SideBar(),
        appBar: AppBar(title: Center(child: Text("Home Page"))),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff30cfd0), Color(0xff330867)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Icon(
                    Icons.home,
                    size: 100,
                    color: Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Color(0xff330867),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: GNav(
                backgroundColor: Color(0xff330867),
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Color(0xff30cfd0),
                padding: EdgeInsets.all(16),
                gap: 8,
                onTabChange: (index) {
                  print(index);
                },
                tabs: [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(
                    icon: Icons.skip_next,
                    text: 'next page',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return imgPickr();
                      }));
                    },
                  ),
                  GButton(icon: Icons.search, text: 'Search'),
                  GButton(icon: Icons.person, text: 'Profile'),
                ]),
          ),
        ));
  }
}
