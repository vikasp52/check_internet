import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';

class CheckInternetWidget extends StatefulWidget {
  final Widget child;

  CheckInternetWidget({this.child});

  @override
  _CheckInternetWidgetState createState() => _CheckInternetWidgetState();
}

class _CheckInternetWidgetState extends State<CheckInternetWidget> {
  showAlertDialog({BuildContext context, String status}) {
    // set up the buttons
    Widget cancelButton = MaterialButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.black,
      onPressed: () => Navigator.pop(context),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        content: Column(
      mainAxisSize: MainAxisSize.min,
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.wifi),
        Text(
          status,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        cancelButton,
      ],
    ));

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
            stream: DataConnectionChecker().onStatusChange,
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data == DataConnectionStatus.connected) {
                  print('Data connection is available.');
                  WidgetsBinding.instance.addPostFrameCallback(
                      (_) => showAlertDialog(context: context, status: 'Data connection is available.'));
                } else {
                  print('You are disconnected from the internet.');
                  WidgetsBinding.instance.addPostFrameCallback(
                      (_) => showAlertDialog(context: context, status: 'You are disconnected from the internet.'));
                }
                return widget.child;
              }
              return widget.child;
            }),
      ),
    );
  }
}
