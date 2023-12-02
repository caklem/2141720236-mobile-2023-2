import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ocr_bpjs/page/home.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: ListView(children: [
          Container(
            width: double.infinity,
            height: 186,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  'assets/frame.png',
                  fit: BoxFit.cover,
                )),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          },
                          child: Image.asset('assets/Vector.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Card(
              child: Row(children: [
            Image.asset("bpjs.png", fit: BoxFit.cover),
            Spacer(),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Halim p"),
              Text("11-12-2023"),
            ]),
            Spacer(),
            Icon(CupertinoIcons.check_mark_circled_solid,color:Colors.green),
          ])),
          SizedBox(
            height: 16,
          ),
          Card(
              child: Row(children: [
            Image.asset("bpjs.png", fit: BoxFit.cover),
            Spacer(),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Rizaldy A"),
              Text("12-12-2023"),
            ]),
            Spacer(),
            Icon(CupertinoIcons.multiply_circle_fill,color:Colors.red),
          ])),
        ]),
      ),
    );
  }
}