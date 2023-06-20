import 'package:flutter/material.dart';
import 'package:smart_grid/home.dart';
import 'package:smart_grid/onboarding5.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Color(0xff163A54)),
      debugShowCheckedModeBanner: false,
      title: 'Smart Grid',
      home: Home(),
    );
  }
}
