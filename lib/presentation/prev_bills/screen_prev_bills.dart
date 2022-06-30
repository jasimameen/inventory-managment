import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenPrevBills extends StatelessWidget {
  const ScreenPrevBills({Key? key}) : super(key: key);
  static const dummyDetails = """
Herr all the Bill
\n
That are previously generated will shows
""";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Prev Bill Details'),
      ),
      body: SizedBox(
        child: Center(
          child: Text(dummyDetails),
        ),
      ),
    );
  }
}
