import 'package:flutter/material.dart';

class component1 extends StatelessWidget {
  const component1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset('images/Rectangle 65.png', width: 154),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 154,
                alignment: Alignment.topCenter,
                child: Text('Storage Battery',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto')),
              ),
              Container(
                  padding: EdgeInsets.only(top: 9),
                  child: Image.asset('images/Group 301.png', width: 28)),
              Container(
                padding: EdgeInsets.only(top: 9),
                child: Text('70%',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Roboto')),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class component2 extends StatelessWidget {
  const component2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset('images/Rectangle 65.png', width: 154),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 154,
                alignment: Alignment.topCenter,
                child: Text('Power Battery',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto')),
              ),
              Container(
                  padding: EdgeInsets.only(top: 9),
                  child: Image.asset('images/Group 301.png', width: 28)),
              Container(
                padding: EdgeInsets.only(top: 9),
                child: Text('80%',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Roboto')),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class component3 extends StatelessWidget {
  const component3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      child: Stack(
        children: [
          Image.asset('images/Rectangle 65.png', width: 154),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 154,
                alignment: Alignment.topCenter,
                child: Text('Power Exported',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto')),
              ),
              Container(
                  padding: EdgeInsets.only(top: 9),
                  child: Image.asset('images/Export.png', width: 50)),
              Container(
                padding: EdgeInsets.only(top: 9),
                child: Text('0.02 KWh',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Roboto')),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class component4 extends StatelessWidget {
  const component4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      child: Stack(
        children: [
          Image.asset('images/Rectangle 65.png', width: 154),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 154,
                alignment: Alignment.topCenter,
                child: Text('Power Inported',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto')),
              ),
              Container(
                  padding: EdgeInsets.only(top: 9),
                  child: Image.asset('images/Vector (2).png', width: 50)),
              Container(
                padding: EdgeInsets.only(top: 9),
                child: Text('1300 KWh',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Roboto')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
