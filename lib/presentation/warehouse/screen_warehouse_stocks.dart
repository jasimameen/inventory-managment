import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/presentation/core/constants.dart';

import '../../application/stock/stock_bloc.dart';
import '../core/styles.dart';
import '../stock/widgets/stock_card_widget.dart';
import '../widgets/custom_app_bar.dart';

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
    final warehouseIdArg = ModalRoute.of(context)?.settings.arguments as int;
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context
          .read<StockBloc>()
          .add(StockEvent.getWarehouseStock(warehouseIdArg));
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: kPriferedSize,
        child: CustomAppBar(
          previousPageTitle: fromPage,
          middle: title,
        ),
      ),
      body: BlocBuilder<StockBloc, StockState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
                child: Column(children: const [
              CircularProgressIndicator(color: AppColors.green),
              kHeight,
              Text('Loading...'),
            ]));
          }
          if (state.isError) {
            return const Center(
                child: Text('Errror Occured',
                    style: TextStyle(
                      color: AppColors.red,
                    )));
          }
          return Wrap(
            children: List.generate(state.warehouseStocks.length, (index) {
              final data = state.warehouseStocks[index];

              //
              return StockCardWidget(
                id: data.id ?? -1,
                title: data.stock_id,
                stocksCount: '${data.qty} left',
              );
            }),
          );
        },
      ),
      backgroundColor: Color.fromARGB(255, 228, 225, 225),
    );
  }
}
