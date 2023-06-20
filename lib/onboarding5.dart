import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_grid/home.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int _currentIndex = 0;

  final tabs = [
    // Center(child: Text('kalender')),
    // Center(child: Text('agenda')),
    Center(child: onboarding()),
    // Center(child: onboarding1()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(top: 33, right: 25),
          child: TextButton(
              onPressed: () => Home(),
              child: Text(
                'Skip',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Poppins'),
              )),
        ),
        Container(
            padding: EdgeInsets.only(left: 52, top: 10),
            child: Row(
              children: [
                Text('Easy ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'Poppins')),
                Text('Life',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ))
              ],
            )),
        Container(
          padding: EdgeInsets.only(left: 52, top: 10, right: 73, bottom: 20),
          child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry standard dummy text ever',
              style: TextStyle(
                  fontSize: 15, color: Colors.white, fontFamily: 'Roboto')),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // color: Colors.white,
              width: 300,
              child: Image.asset('images/background1.png'),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 6),
              child: Container(
                child: Image.asset('images/Rectangle80.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Container(
                child: Image.asset('images/Ellipse 62.png'),
              ),
            ),
            // Padding(
            // padding: EdgeInsets.only(right: 30),
            // child:
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffDBDD66),
                  borderRadius: BorderRadius.circular(13)),
              width: 70,
              height: 53,
              child: Icon(Icons.arrow_forward_outlined, size: 30),
            ),
            // ),
          ],
        ),
      ]),
    );
  }
}
