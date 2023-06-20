import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff163A54),
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              height: 300,
              child: Image.asset('images/login_banner-removebg-preview 1.png'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 30, left: 40),
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: 'Poppins'),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 25, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.white), // Warna outline
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Warna outline saat tidak terfokus
                      ),
                      prefixIcon: Icon(Icons.alternate_email_rounded,
                          color: Colors.white),
                      hintText: 'Masukan Password',
                      hintStyle: TextStyle(
                          color: Colors.white, fontFamily: 'Poppins-Light')),
                )),
            Padding(
              padding: EdgeInsets.only(top: 23, left: 40, right: 40),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Colors.white), // Warna outline
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline saat tidak terfokus
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                    hintText: 'Masukan Password',
                    hintStyle: TextStyle(
                        color: Colors.white, fontFamily: 'Poppins-Light')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffDBDD66)),
                alignment: Alignment.center,
                width: 280,
                height: 40,
                // color: Color(0xffDBDD66),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 62, bottom: 20),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'App v1.0.0',
                  style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
