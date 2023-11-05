import 'package:flutter/material.dart';

class MyFABWidget extends StatelessWidget{
  const MyFABWidget({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          //add your onPresed code here
        },
        child: const Icon(Icons.thumb_up),backgroundColor: Colors.pink,),
      ),
    );
  }

}