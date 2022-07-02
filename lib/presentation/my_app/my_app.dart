import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/application/bloc/shop_bloc.dart';
import 'package:invendory_managment/domain/core/sl/injection.dart';

import '../login/screen_login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ShopBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Inventory App',
        home: SafeArea(
          child: Scaffold(
            body: ScreenLogin(),
          ),
        ),
      ),
    );
  }
}
