import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      color: Colors.blueGrey[900],
      child: const Center(
        child: Text(
          'M.Halim Perdana | 2141720236',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}