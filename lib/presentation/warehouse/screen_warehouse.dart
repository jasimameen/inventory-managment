import 'package:flutter/material.dart';
import 'package:invendory_managment/presentation/stock/screen_stock.dart';

import '../core/navigation.dart';
import '../core/styles.dart';
import '../widgets/square_card_widget.dart';

class ScreenWareHouse extends StatelessWidget {
  const ScreenWareHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigation.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Vehcle Stocks'),
      ),
      body: Wrap(
        children: List.generate(
            20,
            (index) => SquareCardWidget(
                  title: 'Warehouse $index, lvl${index + 1}, room${index + 2}',
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
                        const ScreenStock(
                          title: 'WareHouse Stock Details',
                        ));
                  },
                )),
      ),
    );
  }
}
