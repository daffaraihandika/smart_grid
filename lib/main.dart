import 'package:flutter/material.dart';
import 'package:smart_grid/component.dart';
import 'package:smart_grid/home.dart';
import 'package:smart_grid/login.dart';
import 'package:smart_grid/onboarding5.dart';
import 'dart:ui';

import 'package:smart_grid/onboarding6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Color(0xffffffff)),
      debugShowCheckedModeBanner: false,
      title: 'Smart Grid',
      home: Home(),
    );
  }
}
