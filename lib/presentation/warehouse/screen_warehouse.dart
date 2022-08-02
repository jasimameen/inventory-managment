import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/application/bloc_export.dart';
import 'package:invendory_managment/presentation/warehouse/widgets/warehouse_list_tile.dart';
import 'package:invendory_managment/presentation/widgets/custom_app_bar.dart';

import '../../application/sales/sales_bloc.dart';
import '../../application/warehouse/warehouse_bloc.dart';
import '../core/constants.dart';
import '../core/navigation.dart';
import '../stock/screen_stock.dart';
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
      appBar:const PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: CustomAppBar(
          previousPageTitle: 'Home',
          middle: 'WareHouses',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<WarehouseBloc, WarehouseState>(
          builder: (context, state) {
            return Wrap(
              children: List.generate(
                state.warehouseList.length,
                (index) {
                  final data = state.warehouseList[index];
                  return WareHouseListTile(
                    warehouseData: data,
                    onTap: () {
                      Navigation.push(
                        ScreenStock(
                          title: data.name,
                        ),
                        arguments: data.id, // warehoust id
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 241, 241),
    );
  }
}
