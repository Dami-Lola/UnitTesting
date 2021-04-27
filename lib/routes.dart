
import 'package:flutter/material.dart';
import 'package:flutter_app/homepage.dart';
import 'package:flutter_app/main.dart';

class Routes {
  static const HOME_SCREEN_ROUTE = '/ran';
  static const ANOTHER_SCREEN_ROUTE = '/another_screen';

  static Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      ANOTHER_SCREEN_ROUTE: (context) => HomePage(),
      HOME_SCREEN_ROUTE: (context) => LoginPage()
    };
  }
}