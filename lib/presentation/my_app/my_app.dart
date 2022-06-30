import 'package:flutter/material.dart';

import '../login/screen_login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventory App',
      home: SafeArea(
        child: Scaffold(
          body: ScreenLogin(),
        ),
      ),
    );
  }
}
