import 'package:flutter/material.dart';

class ScreeVehcle extends StatelessWidget {
  const ScreeVehcle({Key? key}) : super(key: key);

  static const dummyDetails = """
Vehcle No : KL 10 BL XXXX
\n
Driver Name : John Dio
\n
Route : CCJ to DXB
\n
Items : 30 Types items
\n
total Stocks : 5000
\n
Data : Data
\n
etc : etc""";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: Center(
          child: Text(dummyDetails),
        ),
      ),
    );
  }
}
