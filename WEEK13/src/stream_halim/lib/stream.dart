import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.blueAccent,
    Colors.cyanAccent,
    Colors.lightGreen,
    Colors.red,
    Colors.lime
  ];
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }

  addError(){
    controller.sink.addError('error');
  }
}

// class NumberStream {
//   Stream<int> getNumbers() async*{
//     yield* Stream.periodic(const Duration(seconds: 1),(int t){
//       Random random = Random();
//       int myNum = random.nextInt(10);
//       return myNum;
//     })
//   }
// }