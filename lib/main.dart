import 'package:flutter/material.dart';
import 'package:news/screens/onboarding.dart';
import 'package:news/utilites.dart';

//import 'screens/home_screen.dart';
//import 'package:shared_preferences/shared_preferences.dart';


void main() async {
// SharedPreferences prefs = await SharedPreferences.getInstance();
//  bool seen = prefs.getBool("seen");
//  Widget  _screen;
//  if (seen == null || seen == false) {
//    _screen = OnBoarding();
//  } else {
//    _screen = homescreen();
//  }

  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
//  final Widget _screen;
//
//  NewsApp(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:Apptheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
