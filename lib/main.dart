import 'package:flutter/material.dart';
import 'package:parttimes/pages/Drawer/Second_page.dart';


import 'package:parttimes/pages/Home_screen.dart';
import 'package:parttimes/pages/News_screen.dart';
import 'package:parttimes/pages/Main_screen.dart';
import 'package:parttimes/pages/Settings_screen.dart';
import 'package:parttimes/pages/splash_screen.dart';
import 'package:parttimes/pages/Drawer/New_page.dart';
import 'package:parttimes/pages/Login_page.dart';

var routes =<String,WidgetBuilder>{
  "/mainscreen":(BuildContext context) =>MainScreen(),
  "/home":(BuildContext context) =>HomeScreen(),
  "/new":(BuildContext context) =>News(),
  "/setting":(BuildContext context) =>Settings(),
  "/newpages":(BuildContext context) =>NewPage(),
  "/secondpages":(BuildContext context) =>SecondPage(),
  "/loginpages":(BuildContext context) =>LoginPage(),
};


void main() =>runApp(new MaterialApp(
theme: ThemeData(primaryColor: Colors.redAccent,
accentColor: Colors.yellowAccent[50]),
debugShowCheckedModeBanner: false,
home: SplashScreen(),
routes: routes,

));

