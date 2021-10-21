import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: Bool8(),
        ),
      ),
    );
class Bool8 extends StatefulWidget {
  @override
  _Bool8State createState() => _Bool8State();
}

class _Bool8State extends State<Bool8> {
  int bool = 1;
  void boolFunction(){
    setState(() {
      bool = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: (){
            boolFunction();
          },
          child: Image.asset('images/ball$bool.png'),
        ),

      ),
    );
  }
}
