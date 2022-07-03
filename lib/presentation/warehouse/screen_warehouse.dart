import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/application/warehouse/warehouse_bloc.dart';
import '../stock/screen_stock.dart';

import '../core/navigation.dart';
import '../widgets/square_card_widget.dart';

class ScreenWareHouse extends StatelessWidget {
  const ScreenWareHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context
          .read<WarehouseBloc>()
          .add(const WarehouseEvent.getAllWarehouses());
    });
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('WareHouses'),
      ),
      body: BlocBuilder<WarehouseBloc, WarehouseState>(
        builder: (context, state) {
          return Wrap(
            children: List.generate(
              state.warehouseList.length,
              (index) {
                final data = state.warehouseList[index];
                return SquareCardWidget(
                  title: data.name,
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 50, 106, 52),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  iconData: Icons.warehouse_sharp,
                  iconColor: const Color.fromARGB(255, 113, 54, 54),
                  onTap: () {
                    Navigation.push(
                        context,
                        ScreenStock(
                          title: data.name + 'WareHouse Stock Details',
                          fromPage: 'Warehouse',
                        ));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
