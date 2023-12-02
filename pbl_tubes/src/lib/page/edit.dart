import 'package:flutter/material.dart';

class edit extends StatelessWidget {
  double fem = 1.0;
  double ffem = 1.0;

  @override
  Widget build(BuildContext context) {
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
                padding: EdgeInsets.fromLTRB(27 * fem, 70 * fem, 141 * fem, 30 * fem),
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
                        'assets/back.png',
                        width: 12 * fem,
                        height: 19 * fem,
                      ),
                    ),
                    Text(
                      'Edit Teks',
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
                        'assets/kis.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 7 * fem),
                      width: 336 * fem,
                      height: 60 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 96 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'Nomor kartu: ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 20 * fem,
                            child: Align(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: 336 * fem,
                                height: 40 * fem,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '0000000000000',
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 7 * fem),
                      width: 336 * fem,
                      height: 60 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 96 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'Nama: ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 20 * fem,
                            child: Align(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: 336 * fem,
                                height: 40 * fem,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Nama',
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 7 * fem),
                      width: 336 * fem,
                      height: 60 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 96 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'Alamat: ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 20 * fem,
                            child: Align(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: 336 * fem,
                                height: 40 * fem,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Alamat',
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 7 * fem),
                      width: 336 * fem,
                      height: 60 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 96 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'Tanggal Lahir: ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 20 * fem,
                            child: Align(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: 336 * fem,
                                height: 40 * fem,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '00-00-0000',
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 7 * fem),
                      width: 336 * fem,
                      height: 60 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 96 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'NIK: ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 20 * fem,
                            child: Align(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: 336 * fem,
                                height: 40 * fem,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '0000000000000000',
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.92 * fem, 7 * fem),
                      width: 336 * fem,
                      height: 60 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 300 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'Tingkat Faskes: ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 20 * fem,
                            child: Align(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: 336 * fem,
                                height: 40 * fem,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Tingkat Faskes',
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(290.08*fem, 0*fem, 0*fem, 0*fem),
                      width:  50.83*fem,
                      height:  50.83*fem,
                      child:  
                    Image.asset(
                      'assets/edit.png',
                      width:  50.83*fem,
                      height:  50.83*fem,
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