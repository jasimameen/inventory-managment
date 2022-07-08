import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/presentation/stock/widgets/stock_card_widget.dart';
import '../../application/stock/stock_bloc.dart';
import '../core/styles.dart';

import '../core/navigation.dart';
import '../widgets/square_card_widget.dart';

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
      appBar: CupertinoNavigationBar(
        previousPageTitle: fromPage,
        middle: Text(title),
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
                  title: data.stock_id, subtitle: '${data.qty} left');

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
