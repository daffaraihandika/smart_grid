import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:math' as math;
import 'package:smart_grid/component.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xff163A54),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 25),
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
                        padding: const EdgeInsets.only(top: 210),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            double maxHeight = constraints.maxHeight;
                            double screenHeight =
                                MediaQuery.of(context).size.height;
                            double desiredHeight = maxHeight > screenHeight
                                ? screenHeight
                                : maxHeight;

                            return Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'images/Rectangle 172 (2).png',
                                height: desiredHeight,
                              ),
                            );
                          },
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 240),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            alignment: Alignment.centerLeft,
                            child: Text('Real-time Monitoring',
                                style: TextStyle(
                                    color: Color(0xB3121919),
                                    fontFamily: 'Poppins-SemiBold',
                                    fontSize: 17)),
                          ),
                          Padding(padding: EdgeInsets.only(top: 6)),
                          Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 130,
                                  width: 305,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ]),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 16, left: 45),
                                    // color: Colors.black,
                                    child: Container(
                                      // color: Colors.black,
                                      child: Text(
                                        'Information',
                                        style: TextStyle(
                                            fontSize: 14, fontFamily: 'Roboto'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.blue,
                                    padding: EdgeInsets.only(
                                        top: 16, left: 10, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Power',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Roboto'),
                                        ),
                                        Text(
                                          'Current',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Roboto'),
                                        ),
                                        Text(
                                          'Voltage',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Roboto'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.only(top: 11),
                                      width: 275,
                                      // color: Colors.amber,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 60,
                                            child: Container(
                                              child: Text(
                                                '26,4 Watt',
                                                // textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto'),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // color: Colors.green,
                                            width: 60,
                                            child: Text(
                                              '2,2 A',
                                              // textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                          Container(
                                            // color: Colors.black,
                                            width: 50,
                                            child: Text(
                                              '12 V',
                                              // textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 13)),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                component1(),
                                component2(),
                                // Image.asset('images/Rectangle 65.png', width: 154),
                                // Image.asset('images/Rectangle 65.png', width: 154)
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                component3(),
                                component4(),
                                // Image.asset('images/Rectangle 65.png', width: 154),
                                // Image.asset('images/Rectangle 65.png', width: 154)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
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
