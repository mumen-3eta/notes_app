import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navigation {
  static GlobalKey<NavigatorState> navkey = GlobalKey<NavigatorState>();

  static navigateToWidget(Widget widget) {
    Navigator.of(navkey.currentContext!)
        .push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  static navigateWithReplacementToWidget(Widget widget) {
    Navigator.of(navkey.currentContext!)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  static Future<dynamic> navigateToWidgetAsync(Widget widget) {
    Future<dynamic> x = Navigator.of(navkey.currentContext!)
        .push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
    return x;
  }
}
