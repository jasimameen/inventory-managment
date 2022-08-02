import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/stock/stock_bloc.dart';
import '../core/constants.dart';
import '../core/styles.dart';
import '../widgets/custom_app_bar.dart';
import 'widgets/stock_card_widget.dart';

class ScreenStock extends StatelessWidget {
  final String title;
  final String? fromPage;
  const ScreenStock({
    Key? key,
    required this.title,
    this.fromPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<StockBloc>().add(const StockEvent.getVehicleStocks());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: kPriferedSize,
        child:  CustomAppBar(
          previousPageTitle:fromPage,
          middle:title,
        ),
      ),
      body: BlocBuilder<StockBloc, StockState>(
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
            children: List.generate(state.stocks.length, (index) {
              final data = state.stocks[index];

              //
              return StockCardWidget(
                id: data.id ?? -1,
                title: data.stock_id,
                stocksCount: '${data.qty} left',
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
