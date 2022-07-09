import 'package:flutter/material.dart';

class Navigation {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Navigation._();
  static pop() => navigatorKey.currentState?.pop();

  static push(Widget screen) => navigatorKey.currentState?.push(
        MaterialPageRoute(
          builder: (context) => screen,
        ),
      );

  static pushAndRemoveUntil(Widget screen) =>
      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false,
      );
}
