import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:router_fluro/route_handlers.dart';

class Routes {
  static String root = "/";
  static String demoSimple = "/demo/demo_message";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        }
    );
    router.define(root, handler: rootHandler);
    router.define(demoSimple, handler: demoMessageHandler);
  }
}