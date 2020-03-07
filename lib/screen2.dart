import 'package:flutter/material.dart';
import 'package:internet/widget/check_internet.dart';

import 'Screen3.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: CheckInternetWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is Screen 2'),
            RaisedButton(
                child: Text('Go to Screen 2'),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Screen3())))
          ],
        ),
      ),
    );
  }
}
