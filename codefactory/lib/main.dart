//import 'package:codefactory/intro_1.dart'; // here is the library 
//import 'package:codefactory/login.dart';
//import 'package:codefactory/homescreen.dart';
//import 'package:codefactory/prodictdetail.dart';
//import 'package:codefactory/siginup.dart';
import 'package:flutter/material.dart';
import 'package:codefactory/splashscreen.dart';

void main() {  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(), // start here 
    );
  }
}