import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc_export.dart';
import '../../domain/core/sl/injection.dart';
import '../core/navigation.dart';
import '../core/styles.dart';
import '../login/screen_sign_in.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<LoginBloc>()),
        BlocProvider(create: (context) => sl<ShopBloc>()),
        BlocProvider(create: (context) => sl<WarehouseBloc>()),
        BlocProvider(create: (context) => sl<ErrandBloc>()),
        BlocProvider(create: (context) => sl<RouteBloc>()),
        BlocProvider(create: (context) => sl<StockBloc>()),
        BlocProvider(create: (context) => sl<SalesBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Navigation.navigatorKey,
        title: 'Inventory App',

        home: Scaffold(
          body: SafeArea(
            child: ScreenLogIn(),
          ),
        ),
        theme: ThemeData(
          primaryColor: AppColors.red,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.red,
            selectedItemColor: AppColors.white,
            unselectedItemColor: AppColors.white.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
