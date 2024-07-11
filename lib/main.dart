import 'package:flutter/material.dart';
import 'package:islamy/HomeScreen.dart';
import 'package:islamy/MyTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
      theme: Mytheme.lightMode,
      debugShowCheckedModeBanner: false,

    );
  }
}