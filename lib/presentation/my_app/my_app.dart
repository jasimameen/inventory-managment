import 'package:flutter/material.dart';
import 'package:invendory_managment/presentation/core/constants.dart';
import 'package:invendory_managment/presentation/dashboard/screen_dashboard.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          body: ScreenDasboard(),
        ),
      ),
    );
  }
}
