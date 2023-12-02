import 'package:flutter/material.dart';
import 'package:ocr_bpjs/page/layout.dart';

class ButtonFront extends StatelessWidget{

  final String theText;

  const ButtonFront({
    super.key,
    required this.theText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Layout(),)),
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Color(0xFF034083);
            }
            return Color(0xFF034083);
          },
        ),
        ),
        child : Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(theText,
                style : const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 243, 245, 245),
                )
              ),
            ],
          ),
        ),
      );        
  }
}