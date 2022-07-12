import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenPrevBills extends StatelessWidget {
  const ScreenPrevBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Prev Bill Details'),
      ),
      body: SizedBox(
        child: Center(
          child: Text(
            'Screen Prev Bills',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
