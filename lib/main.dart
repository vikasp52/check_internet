import 'package:flutter/material.dart';
import 'package:internet/screen2.dart';
import 'package:internet/widget/check_internet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: CheckInternetWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is home screen'),
            RaisedButton(
                child: Text('Go to Screen 2'),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Screen2())))
          ],
        ),
      ),
    );
  }
}
