import 'dart:html';
import 'dart:math';
import 'dart:async';

import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Halim',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  int lastNumber = 0;
  late StreamController NumberStreamController;
  late NumberStream numberStream;
  late StreamTransformer transformer;
  late StreamSubscription subscription;
  late StreamSubscription subscription2;
  String values = '';

  void changeColor() async {
    // await for (var eventColor in colorStream.getColors()){
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }

    // colorStream.getColors().listen((eventColor) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // });
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!NumberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
    numberStream.addError();
  }

  void stopStream() {
    NumberStreamController.close();
  }

  @override
  void initState() {
    // colorStream = ColorStream();
    // changeColor();

    // numberStream = NumberStream();
    // NumberStreamController = numberStream.controller;
    // Stream stream = NumberStreamController.stream;
    // stream.listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // });
    // stream.listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error){
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });

    // transformer = StreamTransformer<int, int>.fromHandlers(
    //     handleData: (value, sink) {
    //       sink.add(value * 10);
    //     },
    //     handleError: (error, trace, sink) {
    //       sink.add(-1);
    //     },
    //     handleDone: (sink) => sink.close());

    // stream.transform(transformer).listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });

    numberStream = NumberStream();
    // NumberStreamController = NumberStream();
    NumberStreamController = numberStream.controller;
    Stream stream = NumberStreamController.stream.asBroadcastStream();
    subscription = stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });

    // subscription.onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });
    // subscription.onDone(() {
    //   print('On done was called!');
    // });

    subscription = stream.listen((event) {
      setState(() {
        values += '$event -';
      });
    });

    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event -';
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    NumberStreamController.close();
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(values),
              ElevatedButton(
                onPressed: () => addRandomNumber(),
                child: Text('New Random Number'),
              ),
              ElevatedButton(
                onPressed: () => stopStream(),
                child: const Text('Stop SUbcription'),
              )
            ],
          ),
        ));
  }
}
