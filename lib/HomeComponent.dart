import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:router_fluro/application.dart';

String name;

class HomeComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeComponentState();
  }
  /*
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(46.0),
              child: new TextField(
                decoration: new InputDecoration(
                    hintText: "Enter your good name :)",
                    hintStyle: new TextStyle(
                        color: Colors.white, fontSize: 24.0)
                ),
                autocorrect: true,
                style: new TextStyle(color: Colors.white, fontSize: 24.0),
                maxLines: 1,
                keyboardType: TextInputType.text,
                onSubmitted: (String s) {
                  name = s;
                },
              ),
            ),
            new RaisedButton(
              onPressed: () {
                String mess = name;
                print(mess);
                //route to demo_message.dart
                Application.router.navigateTo(
                    context,
                    '/demo/demo_message?message=$mess',
                    transition: TransitionType.fadeIn
                );
              },
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: new Text(
                  "Navigate to DemoMessage",
                style: new TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepOrange,
    );
  }
  */

}

class HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(46.0),
              child: new TextField(
                decoration: new InputDecoration(
                    hintText: "Enter your good name :)",
                    hintStyle: new TextStyle(
                        color: Colors.white, fontSize: 24.0)
                ),
                autocorrect: true,
                style: new TextStyle(color: Colors.white, fontSize: 24.0),
                maxLines: 1,
                keyboardType: TextInputType.text,
                onSubmitted: (String s) {
                  name = s;
                },
                onChanged: (String s){
                  name = s;
                },
              ),
            ),
            new RaisedButton(
              onPressed: () {
                String mess = name;
                print(mess);
                //route to demo_message.dart
                Application.router.navigateTo(
                    context,
                    '/demo/demo_message?message=$mess',
                    transition: TransitionType.fadeIn
                );
              },
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: new Text(
                "Navigate to DemoMessage",
                style: new TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepOrange,
    );
  }
}