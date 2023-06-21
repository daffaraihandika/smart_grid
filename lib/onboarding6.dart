import 'package:flutter/material.dart';
import 'package:smart_grid/home.dart';
import 'package:smart_grid/onboarding5.dart';

class onboarding6 extends StatelessWidget {
  const onboarding6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff163A54),
          child: Column(children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(top: 10, right: 25),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back',
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
                    Text('Best ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                            fontFamily: 'Poppins')),
                    Text('Quality',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: 'Poppins-Medium',
                        ))
                  ],
                )),
            Container(
              padding: EdgeInsets.only(left: 52, top: 10, right: 73),
              child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry standard dummy text ever',
                  style: TextStyle(
                      fontSize: 15, color: Colors.white, fontFamily: 'Roboto')),
            ),
            Container(
              // color: Colors.white,r
              child: Image.asset(
                  'images/vecteezy_flat-isometric-concept-3d-illustration-solar-panel-electric_18993723-removebg-preview 1.png'),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6, left: 50),
                  child: Container(
                    child: Image.asset('images/Ellipse 62.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Container(
                    child: Image.asset('images/Rectangle80.png'),
                  ),
                ),
                // Padding(
                // padding: EdgeInsets.only(right: 30),
                // child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffDBDD66), // Warna latar belakang
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13), // Bentuk border
                    ),
                    minimumSize: Size(150, 53), // Ukuran minimum tombol
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                    // Aksi ketika tombol ditekan
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xff121919),
                    ),
                  ),
                )
      
                // ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
