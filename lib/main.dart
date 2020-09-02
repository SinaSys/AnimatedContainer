import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _color = Colors.red;
  var _height = 100.0;
  var _width = 100.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App bar"),
          ),
          body: Center(
            child: Column(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.decelerate,
                  color: _color,
                  width: _width,
                  height: _height,
                ),
                OutlineButton(
                  child: Text("Animate container"),
                  onPressed: () => animateContainer(),
                )
              ],
            ),
          )),
    );
  }

  animateContainer() {
    setState(() {
      _color = _color == Colors.red ? Colors.green : Colors.red;
      _height = _height == 100 ? 200 : 100;
      _width = _width == 100 ? 200 : 100;
    });
  }
}
