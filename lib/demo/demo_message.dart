import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:router_fluro/application.dart';

class DemoMessage extends StatelessWidget {
  final String message;

  DemoMessage({@required this.message});

  @override
  Widget build(BuildContext context) {
    print(message);
    return new Scaffold(
      body: new Container(
        color: Colors.white,
        child: new Center(
            child: new Text(
              "Hi " + message + "!",
              style: new TextStyle(color: Colors.deepOrange, fontSize: 54.0),
            )
        ),
      ),
    );
  }

}