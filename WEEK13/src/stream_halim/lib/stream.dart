import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.blue.shade900,
  ];

  Stream<Color> getColors() async*{
    yield* Stream.periodic(const Duration(seconds: 1), (int index) {
      return colors[index % colors.length];
      });
  }
}
