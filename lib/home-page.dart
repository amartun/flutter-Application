import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            setState(() {});
          },
          child: Container(
              child: TextPrint(),
              color: Color((random.nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0)),
        ),
      ),
    );
  }
}

Widget TextPrint() {
  return Center(child: Text("Hey there"));
}
