import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:math' as math;

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(
      Icons.home_sharp,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.list_sharp,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.category,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.add,
      size: 30,
      color: Colors.white,
    )
  ];

  int index = 1;
  // const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 25),
              child: Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins-Medium',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 145),
                      child: Icon(Icons.power_settings_new,
                          color: Colors.white, size: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Image.asset(
                        'images/mi_options-vertical.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
                child: Stack(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(top: 6),
                  child: Image.asset(
                      'images/vecteezy_smart-home-with-solar-panels-and-car-charger_-removebg-preview 3.png',
                      height: 300),
                ),
                Container(
                  padding: EdgeInsets.only(left: 22),
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smart Grid App',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'Poppins-SemiBold',
                          // fontWeight: FontWeight.w300
                        ),
                      ),
                      Row(
                        children: [
                          Text('Today',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Poppins-SemiBold',
                                // fontWeight: FontWeight.w300
                              )),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Container(
                            height: 21,
                            width: 58,
                            color: Colors.white,
                            child: Text(
                              '06 MEI',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 12)),
                      Text(
                        'Light Intensity',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins-Regular',
                            fontSize: 14),
                      ),
                      Text(
                        '1000 Lux',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins-Semibold',
                            fontSize: 20),
                      ),
                      Padding(padding: EdgeInsets.only(top: 9)),
                      Text(
                        'Salable Power',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins-Regular',
                            fontSize: 14),
                      ),
                      Text(
                        'Rp. 200.000,00',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins-Semibold',
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        double maxHeight = constraints.maxHeight;
                        double screenHeight =
                            MediaQuery.of(context).size.height;

                        double desiredHeight =
                            maxHeight > screenHeight ? screenHeight : maxHeight;

                        return Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'images/Rectangle 172.png',
                            height: desiredHeight,
                          ),
                        );
                      },
                    ))
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: index,
          onTap: (selctedIndex) {
            setState(() {
              index = selctedIndex;
            });
          },
          height: 70,
          color: Color(0xff163A54),
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300)),
      // bottomNavigationBar: ,
    );
  }
}
