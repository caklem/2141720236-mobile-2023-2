import 'package:flutter/material.dart';

import 'package:ocr_bpjs/widget/button_front_widget.dart';
import 'package:ocr_bpjs/widget/register_button_sal_widget.dart';
import 'package:ocr_bpjs/widget/upper_logo_widget.dart';
import 'package:ocr_bpjs/widget/custom_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0Xff04A25B),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              const UpperLogo(),
              const SizedBox(
                height: 60,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFFDFDFD),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          labelText: "masukkan password"
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          labelText: "masukkan password"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 5),
              Text("Lupa Password?", style: TextStyle(color: Colors.white, ), textAlign: TextAlign.center),
              SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(left: 70, right: 70),
                child: const ButtonFront(theText: 'Masuk'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}