import 'package:flutter/material.dart';
// import 'package:ocr_bpjs/page/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ocr_bpjs/page/profil_akun.dart';
// import 'package:ocr_bpjs/page/riwayat.dart';
import 'package:ocr_bpjs/page/splash_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String homePageRoute = '/home_page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OCR BPJS',
      initialRoute: '/',
      home: Scaffold(body: const SplashScreen()),
    );
  }
}