import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ocr_bpjs/page/awal_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const AwalScreen()), (route) => false);
    });
    return Scaffold(
      body: Center(child: 
        Image.asset('assets/ocr2.png')
      ,)
    );
  }
}
