import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:router_fluro/application.dart';
import 'package:router_fluro/route_handlers.dart';
import 'package:router_fluro/routes.dart';

class AppComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AppComponentState();
  }

}

class AppComponentState extends State<AppComponent> {
  AppComponentState() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = new MaterialApp(
      title: 'Fluro',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
    print("initial route = ${app.initialRoute}");
    return app;
  }
}
