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
  'Vehcle Details',
  'Route',
  'Anylics',
  'Shops',
  'Warehouse',
  'Stock Details',
  'Prev Bills',
  'EndSession',
];
List<IconData> dashTileIcons = const [
  CupertinoIcons.car_detailed,
  CupertinoIcons.map,
  CupertinoIcons.graph_square_fill,
  CupertinoIcons.house_fill,
  Icons.warehouse_outlined,
  Icons.shopping_cart_checkout_rounded,
  Icons.inventory_outlined,
  Icons.stop_circle,
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
      body: Wrap(
        children: List.generate(
            dashCardNavTo.length,
            (index) => SquareCardWidget(
                title: dashTileTitles[index],
                iconData: dashTileIcons[index],
                onTap: () {
                  Navigation.push(context, dashCardNavTo[index]);
                })),
      ),
    );
  }
}
