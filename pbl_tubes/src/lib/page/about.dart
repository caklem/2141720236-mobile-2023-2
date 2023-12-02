import 'package:flutter/material.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(27 * fem, 70 * fem, 121 * fem, 30 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff034083),
                  borderRadius: BorderRadius.circular(10 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 102 * fem, 5 * fem),
                      width: 12 * fem,
                      height: 19 * fem,
                      child: Image.asset(
                        'assets/Vector.png',
                        width: 12 * fem,
                        height: 19 * fem,
                      ),
                    ),
                    Text(
                      'Tentang Kami',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(27 * fem, 17 * fem, 26.08 * fem, 25.08 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 22 * fem),
                      width: 336 * fem,
                      height: 192 * fem,
                      child: Image.asset(
                        'assets/ocr1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 7 * fem),
                      width: 340 * fem,
                      height: 300 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 335 * fem,
                                height: 400 * fem,
                                child: Text(
                                  'OCR - BPJS Scanner adalah aplikasi yang menggunakan teknologi OCR untuk memindai kartu BPJS Kesehatan dan mengekstrak informasi teks dari kartu tersebut. Aplikasi ini memungkinkan pengguna untuk dengan mudah mengakses dan menyimpan informasi BPJS mereka dalam format yang dapat dibaca, menghemat waktu dan usaha. Dengan demikian, aplikasi ini mempermudah pengguna dalam mengelola dan berbagi informasi BPJS.\n\n',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 40 * fem, 4.92 * fem, 7 * fem),
                      width: 340 * fem,
                      height: 120 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 335 * fem,
                                height: 190 * fem,
                                child: Text(
                                  'Tim Kami, \n BlackJack \n \n \n Copyright 2023',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
