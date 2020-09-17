import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _colors = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
           body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              setState(() {
                _colors = !_colors;
              });
            },
            child: Container(
                child: TextPrint(),
                color: _colors ? Colors.green : Colors.redAccent
            ),
          ),
        ),
    );
  }
}

Widget TextPrint() {
  return Center(
      child: Text("Hey there")
  );
}
