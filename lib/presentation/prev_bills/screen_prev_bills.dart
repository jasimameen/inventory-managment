import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/sales/sales_bloc.dart';
import '../core/styles.dart';
import '../stock/widgets/stock_card_widget.dart';

class ScreenPrevBills extends StatelessWidget {
  const ScreenPrevBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<SalesBloc>().add(const SalesEvent.getAllSales());
    });
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('History'),
      ),
      body: BlocBuilder<SalesBloc, SalesState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(color: AppColors.green));
          }
          if (state.isError) {
            return const Center(
                child: Text('Errror Occured',
                    style: TextStyle(
                      color: AppColors.red,
                    )));
          }
          return Wrap(
            children: List.generate(state.salesList.length, (index) {
              final data = state.salesList[index];

              //
              return StockCardWidget(
                id: 0,
                title: data.date + ' Item: ' + data.stock,
                subtitle: 'shop: ' + data.shop,
                stocksCount: 'INR${data.unitprice} x ${data.qty} piece = ' +
                    '${data.totalprice} INR',
              );

              //

              // return SquareCardWidget(
              //   title: data.qty.toString() + ' Left',
              //   textStyle: const TextStyle(
              //     color: AppColors.green,
              //     fontSize: 18,
              //     fontWeight: FontWeight.bold,
              //   ),
              //   iconData: Icons.production_quantity_limits,
              //   iconColor: Colors.redAccent,
              //   onTap: () {},
              // );
            }),
          );
        },
      ),
    );
  }
}
