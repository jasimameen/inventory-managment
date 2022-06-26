import 'dart:ffi';

import 'package:flutter/material.dart';

class Navigation {
  Navigation._();
  static pop(BuildContext context) => Navigator.pop(context);
  static push(BuildContext context, Widget screen) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
}
