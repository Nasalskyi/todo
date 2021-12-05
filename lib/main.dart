import 'package:flutter/material.dart';
import 'package:to_do/pages/home.dart';
import 'package:to_do/pages/main_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute:'/',
  routes: {
    '/':(context) => MainScreen(),
    '/todo': (context) => Home(),
  },
));
