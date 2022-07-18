import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/sales/sales_bloc.dart';
import '../../../domain/models/sales.dart';
import '../../../domain/models/stock.dart';
import '../../core/constants.dart';
import '../../core/navigation.dart';
import '../../core/styles.dart';

class NewItemPopup extends StatelessWidget {
  const NewItemPopup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      context.read<SalesBloc>().add(const SalesEvent.getAllStocks());
    });
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      title: PhysicalModel(
        color: Colors.transparent,
        elevation: 8,
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.green,
          ),
          child: const Center(
            child: Text(
              'Add Item',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      content: SizedBox(
        height: 200,
        width: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose Item'),
            BlocBuilder<SalesBloc, SalesState>(
              builder: (context, state) {
                log(state.stocks.toString());
                return SelectItemWidget(optionList: state.stocks);
              },
            ),
            Text('Qty'),
            SelectItemWidget(width: 55),
          ],
        ),
      ),
      actions: [
        const Text('Total: '),
        const Text(
          '200.00 INR',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        spacer,
        ElevatedButton(
          onPressed: () {
            Navigation.pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            context
                .read<SalesBloc>()
                .add(SalesEvent.addNewSale(SalesModel.fromMap({})));

            Navigation.pop();
          },
          child: const Text('Save'),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}

class SelectItemWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final List<StockModel> optionList;
  final SalesState? salesState;
  const SelectItemWidget({
    Key? key,
    this.width,
    this.height,
    this.optionList = const [],
    this.salesState,
  }) : super(key: key);

  static String _displayStringForOption(StockModel option) => option.itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.only(top: 3, bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Autocomplete<StockModel>(
        displayStringForOption: _displayStringForOption,
        optionsBuilder: (textEditingValue) async {
          if (textEditingValue.text.trim() == '') return const Iterable.empty();

          return optionList.where((StockModel option) {
            return option
                .toString()
                .contains(textEditingValue.text.toLowerCase());
          });
        },
        onSelected: (StockModel selection) {
          debugPrint('You just selected ${_displayStringForOption(selection)}');
        },
      ),
    );
  }
}
