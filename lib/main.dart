import 'dart:developer';
import 'package:deadshot/screens/login_screen.dart';
import 'package:deadshot/screens/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
  
}


class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Instagram',
      debugShowCheckedModeBanner:false,
      home:LoginScreen(),
      routes: {
        LoginScreen.id:(context)=>LoginScreen(),
        SignupScreen.id:(context)=>SignupScreen(),
      },
    );
  }
}


