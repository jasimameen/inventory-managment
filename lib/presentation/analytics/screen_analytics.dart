import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenAnalytics extends StatelessWidget {
  const ScreenAnalytics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Analytics'),
      ),
      body: Center(
        child: Text('Screen Analytics'),
      ),
    );
  }
}
