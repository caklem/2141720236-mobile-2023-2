import 'package:flutter/material.dart';
import 'package:ocr_bpjs/page/login.dart';
import 'package:ocr_bpjs/page/register_screen.dart';

class AwalScreen extends StatelessWidget {
  const AwalScreen({super.key});

  @override
  // Widget build(BuildContext context) {

  //   return Scaffold(
  //     appBar: AppBar(),
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children:[
  //       Image.asset('assets/image/logo2.png'),
  //       // Opacity(opacity: 0.3,
  //       // child: Image.asset('assets/image/logo.png'))
  //       ]
  //     ),

  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        width: MediaQuery.of(context).size.width * 2,
        left: -100,
        bottom: -100,
        top: 0,
        child: Opacity(
          opacity: 0.5,
          child: Image.asset('assets/ocr2.png'),
        ),
      ),
      const Spacer(),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Positioned(
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/ocr1.png'),
                SizedBox(height: 100.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),);
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.lightBlue,
                      fixedSize: Size(340, 62),
                      backgroundColor: Colors.indigo[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.lightBlue,
                      fixedSize: Size(340, 62),
                      backgroundColor: Color(0xFF04A25B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )
    ]));
  }
}
