import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/errand/errand_bloc.dart';
import '../../application/route/route_bloc.dart';
import '../../application/shop/shop_bloc.dart';
import '../../application/stock/stock_bloc.dart';
import '../../application/warehouse/warehouse_bloc.dart';
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
        BlocProvider(create: (context) => sl<ErrandBloc>()),
        BlocProvider(create: (context) => sl<RouteBloc>()),
        BlocProvider(create: (context) => sl<StockBloc>()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Inventory App',
        home: Scaffold(
          body: SafeArea(
            child: ScreenLogin(),
          ),
        ),
      ),
    );
  }
}
