import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_grid/onboarding5.dart';

class splashscreen extends StatefulWidget {
  // const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => onboarding()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xff163A54),
          child: Center(child: Image.asset('images/Logo.png'))),
    );
  }
}
