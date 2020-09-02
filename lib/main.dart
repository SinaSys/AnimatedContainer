import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _opacity = 0.0;

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
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 3),
                  child: FlutterLogo(size: 200,),
                ),
                OutlineButton(
                  child: Text("Animate Opacity"),
                  onPressed: () => animateOpacity(),
                )
              ],
            ),
          )),
    );
  }

  animateOpacity() {
    setState(() {
      _opacity = _opacity == 0 ? 1.0 : 0.0;
    });
  }
}
