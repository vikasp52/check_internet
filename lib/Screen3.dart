import 'package:flutter/material.dart';
import 'package:internet/widget/check_internet.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: CheckInternetWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is last Screen'),
            //RaisedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Screen2())))
          ],
        ),
      ),
    );
  }
}
