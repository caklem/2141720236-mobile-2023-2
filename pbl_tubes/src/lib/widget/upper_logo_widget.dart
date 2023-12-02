import 'package:flutter/material.dart';

class UpperLogo extends StatelessWidget{
  const UpperLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(0),
    child: Image.asset('assets/logo.png', width: 354,)   );
  }
}