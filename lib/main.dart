
import 'package:firstflutterproject/pages/Loginpage.dart';
import 'package:firstflutterproject/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firstflutterproject/pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {

   WidgetsFlutterBinding.ensureInitialized();
   Constants.prefs= await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Awesome App",
    home: Constants.prefs.getBool("loggedIn")==true?Homepage():LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context)=>LoginPage(),
          "/home":(context)=>Homepage(),
    },
  ));
}






