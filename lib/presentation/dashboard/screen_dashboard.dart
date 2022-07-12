import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../analytics/screen_analytics.dart';
import '../core/navigation.dart';
import '../end_session/screen_end_session.dart';
import '../prev_bills/screen_prev_bills.dart';
import '../route/screen_route.dart';
import '../shop/screen_all_shops.dart';
import '../stock/screen_stock.dart';
import '../vehcle/screen_vehcle.dart';
import '../warehouse/screen_warehouse.dart';
import '../widgets/square_card_widget.dart';

List<String> dashTileTitles = const [
  'Vehcle',
  'Route',
  'Anylics',
  'Shops',
  'Warehouse',
  'Stock',
  'Prev Bills',
  'EndSession',
];
List<IconData> dashTileIcons = const [
  Icons.local_shipping,
  CupertinoIcons.map,
  Icons.analytics_outlined,
  Icons.storefront,
  Icons.warehouse_outlined,
  Icons.shopping_cart_checkout_rounded,
  Icons.receipt_long,
  Icons.stop_circle,
];
List<Color> dashTileColors = const [
  Color.fromARGB(255, 238, 66, 54),
  Color.fromARGB(255, 76, 175, 80),
  Color.fromARGB(255, 197, 69, 112),
  Color.fromARGB(255, 255, 152, 0),
  Color.fromARGB(255, 68, 59, 47),
  Color.fromARGB(255, 16, 100, 129),
  Color.fromARGB(255, 62, 95, 202),
  Color.fromARGB(255, 214, 26, 26),
];
List<Widget> dashCardNavTo = const [
  ScreeVehcle(),
  ScreenRoute(),
  ScreenAnalytics(),
  ScreenAllShops(),
  ScreenWareHouse(),
  ScreenStock(
    title: 'VehcleStock Details',
    fromPage: 'Home',
  ),
  ScreenPrevBills(),
  ScreenEndSession(),
];

class ScreenDasboard extends StatelessWidget {
  const ScreenDasboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('Dashboard'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Wrap(
          children: List.generate(
              dashCardNavTo.length,
              (index) => SquareCardWidget(
                  title: dashTileTitles[index],
                  iconData: dashTileIcons[index],
                  iconColor: dashTileColors[index],
                  onTap: () {
                    Navigation.push(dashCardNavTo[index]);
                  })),
        ),
      ),
    );
  }
}
