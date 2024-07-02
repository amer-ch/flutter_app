// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:first_app/pages/login.dart';
import 'package:first_app/pages/signup.dart';
import 'package:first_app/pages/welcom.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
    
    '/': (context) => const Welcom(),
   
    "/login": (context) => const LoginForm (),

    "/signup":(context) => const Signup (),
  },
    );
  }
}

