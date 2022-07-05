import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/application/vehicle/vehicle_bloc.dart';
import 'package:invendory_managment/application/warehouse/warehouse_bloc.dart';
import '../../application/shop/shop_bloc.dart';
import '../../domain/core/sl/injection.dart';

import '../login/screen_login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ShopBloc>()),
        BlocProvider(create: (context) => sl<WarehouseBloc>()),
        BlocProvider(create: (context) => sl<VehicleBloc>()),
      ],
      child: const MaterialApp(
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
