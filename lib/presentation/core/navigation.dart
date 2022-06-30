import 'package:flutter/material.dart';

class Navigation {
  Navigation._();
  static pop(BuildContext context) => Navigator.pop(context);
  
  static push(BuildContext context, Widget screen) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );

  static pushAndRemoveUntil(BuildContext context, Widget screen) =>
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false,
      );
}
