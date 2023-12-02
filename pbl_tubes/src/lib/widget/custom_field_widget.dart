import 'package:flutter/material.dart';

class CustomField extends StatelessWidget{

  final String hintText;
  final bool obsecure;

  const CustomField({
    super.key,
    required this.hintText,
    required this.obsecure,
  });

  @override
 Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white,),
    child: TextField(
      controller: TextEditingController(text: ''),
      decoration: InputDecoration(hintText: 'Masukkan $hintText'),
    ),
  );
 }
}