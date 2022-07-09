import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/styles.dart';

class ScreenEndSession extends StatelessWidget {
  const ScreenEndSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('End Session'),
      ),
      body: Center(
        child: CupertinoButton.filled(
            child: Text('End Current Session'),
            onPressed: null,
            disabledColor: AppColors.grey),
      ),
    );
  }
}
