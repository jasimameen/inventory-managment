import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/main.dart';

import '../../application/bloc_export.dart';
import '../../application/errand/errand_bloc.dart';
import '../../application/shop/shop_bloc.dart';
import '../../domain/models/models_exported.dart';
import '../../domain/models/stock.dart';
import '../core/constants.dart';
import '../core/navigation.dart';
import '../core/styles.dart';
import '../prev_bills/screen_prev_bills.dart';
import '../route/screen_route.dart';
import '../shop/screen_all_shops.dart';
import '../stock/screen_stock.dart' as stocks;
import '../vehcle/screen_vehcle.dart';
import '../warehouse/screen_warehouse.dart';
import '../warehouse/screen_warehouse_stocks.dart' as wstocks;
import '../widgets/custom_app_bar.dart';
import '../widgets/square_card_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: CustomAppBar(
          middle: 'DashBoard',
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 219, 223, 219)
            ],
            begin: Alignment.center,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            kHeight,
            const Align(alignment: Alignment.center, child: _VehicleCard()),

            // square cards Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SquareCardWidget(
                      title: 'Shops',
                      iconData: Icons.storefront,
                      iconColor: const Color.fromARGB(255, 255, 152, 0),
                      onTap: () {
                        Navigation.push(const ScreenAllShops());
                      }),
                  SquareCardWidget(
                      title: 'Warehouses',
                      iconData: Icons.warehouse_outlined,
                      iconColor: const Color.fromARGB(255, 115, 96, 67),
                      onTap: () {
                        Navigation.push(const ScreenWareHouse());
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SquareCardWidget(
                      title: 'Stocks',
                      iconData: Icons.shopping_bag_outlined,
                      iconColor: const Color.fromARGB(255, 21, 21, 98),
                      onTap: () {
                        Navigation.push(const stocks.ScreenStock(
                          title: 'VehcleStock Details',
                          fromPage: 'Home',
                        ));
                      }),
                  SquareCardWidget(
                      title: 'Prev Bills',
                      iconData: Icons.inventory_outlined,
                      iconColor: Color.fromARGB(255, 210, 90, 174),
                      onTap: () {
                        Navigation.push(const ScreenPrevBills());
                      }),
                ],
              ),
            ),

            // vehicle stocks
            spacer,
            const Align(alignment: Alignment.center, child: _ShopsDashTile()),
            kHeight,
          ],
        ),
      ),
    );
  }
}

const kvehicleTextStyle = TextStyle(
  color: AppColors.white,
  fontSize: 20,
  fontFamily: 'Roboto',
);

class _VehicleCard extends StatelessWidget {
  const _VehicleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<ErrandBloc>().add(const ErrandEvent.getErrandInfo());
      context.read<ErrandBloc>().add(const ErrandEvent.getDriverInfo());
      context.read<ErrandBloc>().add(const ErrandEvent.getVehicleInfo());
    });
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigation.push(const ScreenRoute());
      },
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 5,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: screenWidth * .85,
          height: screenWidth * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 243, 105, 95).withOpacity(0.5),
                Color.fromARGB(255, 201, 51, 40),
                Color.fromARGB(255, 167, 29, 64),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LimitedBox(
                maxWidth: screenWidth * .3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_shipping,
                      color: AppColors.black,
                      size: screenWidth * .15,
                    ),
                    SizedBox(
                      height: screenWidth * .01,
                    ),
                    const Text(
                      'Vehicle',
                      style: kvehicleTextStyle,
                    ),
                  ],
                ),
              ),

              //
              BlocBuilder<ErrandBloc, ErrandState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                        child: Text(
                      'Loading Data...',
                      style: TextStyle(
                          color: AppColors.white, fontStyle: FontStyle.italic),
                    ));
                  }
                  if (state.isError) {
                    return const Center(child: Text('Error'));
                  }

                  final name = state.driverInfo.name;
                  final contact = state.driverInfo.contact;
                  final vehicleNo = state.vehicleInfo.vehicle_number;
                  final vehicleType = state.vehicleInfo.vehicle_type;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name    : ' + name, style: kvehicleTextStyle),
                      Text('Contact : $contact', style: kvehicleTextStyle),
                      Text('Reg No  : ' + vehicleNo, style: kvehicleTextStyle),
                      Text('Type      : ' + vehicleType,
                          style: kvehicleTextStyle),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShopsDashTile extends StatelessWidget {
  const _ShopsDashTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<ShopBloc>().add(const ShopEvent.getAllShops());
    });
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigation.push(const ScreenRoute());
      },
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 5,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: screenWidth * .85,
          height: screenWidth * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 54, 149, 244).withOpacity(0.5),
                Color.fromARGB(255, 48, 129, 215),
                Color.fromARGB(255, 35, 20, 110),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LimitedBox(
                maxWidth: screenWidth * .3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_rounded,
                      color: const Color.fromARGB(255, 223, 204, 204),
                      size: screenWidth * .15,
                    ),
                    SizedBox(
                      height: screenWidth * .01,
                    ),
                    const Text(
                      'Shops',
                      style: kvehicleTextStyle,
                    ),
                  ],
                ),
              ),

              //
              BlocBuilder<RouteBloc, RouteState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                        child: Text(
                      'Loading Data...',
                      style: TextStyle(
                          color: AppColors.white, fontStyle: FontStyle.italic),
                    ));
                  }
                  if (state.isError) {
                    return const Center(child: Text('Error'));
                  }

                  final townCount = state.towns.length;
                  final shopCount = state.shops.length;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shops : $shopCount', style: kvehicleTextStyle),
                      Text('Towns : $townCount', style: kvehicleTextStyle),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VehcleStockTable extends StatelessWidget {
  const _VehcleStockTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: PhysicalModel(
        color: const Color.fromARGB(255, 232, 226, 226),
        elevation: 2,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final stock = StockModel(
                stock_id: 'stock_id',
                qty: index * 10 + 1,
                warehouse: 0,
                item: 0,
                itemName: 'Item $index',
                itemModel: ItemModel.fromMap({'categoryName': 'kitchen'}));
            final head = buildRow(
              -1,
              StockModel.fromMap({}),
            );
            final seeAll = Align(
              alignment: Alignment.topRight,
              child: CupertinoButton(
                  child: const Text('See All'),
                  onPressed: () {
                    Navigation.push(
                      const wstocks.ScreenStock(
                          title: 'Vehicle Stock', fromPage: 'Home'),
                      arguments: 1,
                    );
                  }),
            );
            if (index == 0)
              return Column(
                  children: [seeAll, head, divider, buildRow(0, stock)]);

            return buildRow(index, stock);
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 20,
        ),
      ),
    );
  }

  Widget buildRow(int index, StockModel stock, {TextStyle? style}) {
    if (index == -1) style = const TextStyle(fontWeight: FontWeight.bold);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(index == -1 ? 'Index' : '$index', style: style),
        Text(index == -1 ? 'Item' : stock.itemName, style: style),
        Text(index == -1 ? 'Stock Id' : stock.stock_id, style: style),
        Text(index == -1 ? 'Category' : stock.itemModel?.categoryName ?? '_',
            style: style),
        Text(index == -1 ? 'Qty' : '${stock.qty} left', style: style),
      ],
    );
  }
}
