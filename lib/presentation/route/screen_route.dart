import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenRoute extends StatelessWidget {
  const ScreenRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Route'),
      ),
      body: Center(
        child: Text('ScreenRoute'),
      ),
    );
  }
}
