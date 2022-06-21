import 'package:flutter/material.dart';
import 'package:invendory_managment/presentation/shop/screen_shop.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          body: ScreenShop(),
        ),
      ),
    );
  }
}

class Somethingwidgets extends StatelessWidget {
  const Somethingwidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello World'),
    );
  }
}
