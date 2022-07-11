import 'package:flutter/material.dart';

class Navigation {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Navigation._();
  static pop() => navigatorKey.currentState?.pop();

  static push(Widget screen, {Object? arguments}) =>
      navigatorKey.currentState?.push(
        MaterialPageRoute(
          builder: (context) => screen,
          settings: RouteSettings(arguments: arguments),
        ),
      );

  static pushNamed(String routeName, {Object? arguments}) =>
      navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);

  static pushAndRemoveUntil(Widget screen) =>
      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false,
      );
}
