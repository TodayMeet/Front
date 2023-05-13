import 'package:flutter/material.dart';
import 'dart:async';
import 'package:test1/login.dart';

class Start extends StatefulWidget {
  @override
  _Start createState() => _Start();
}

class _Start extends State<Start> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Spacer(),
        Image.asset(
          'assets/images/logoimage.png',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Spacer(),
        Text("bandeuthan")
      ])),
    );
  }
}
