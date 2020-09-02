import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _isFirstCrossFadeEnabled=false;

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
                AnimatedCrossFade(
                    firstChild: FlutterLogo(size: 100,),
                    secondChild: Icon(Icons.android,size: 100,),
                    crossFadeState: _isFirstCrossFadeEnabled?
                    CrossFadeState.showFirst:CrossFadeState.showSecond,
                    duration: Duration(seconds: 3),
                ),
                OutlineButton(
                  child: Text("Animate CrossFade"),
                  onPressed: () => animateCrossFade(),
                )
              ],
            ),
          )),
    );
  }

  animateCrossFade() {
    setState(() {
      _isFirstCrossFadeEnabled = !_isFirstCrossFadeEnabled;
    });
  }
}
