import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:router_fluro/HomeComponent.dart';
import 'package:router_fluro/demo/demo_message.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new HomeComponent();
    }
);

var demoMessageHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String message = params["message"]?.first;
//      String colorHex = params["color_hex"]?.first;
//      String result = params["result"]?.first;
//      Color color = new Color(0xFFFFFFFF);
//      if (colorHex != null && colorHex.length > 0) {
//        color = new Color(Colors.white70.blue);
//      }
      return new DemoMessage(message: message);
    }
);