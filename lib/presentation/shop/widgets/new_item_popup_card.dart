import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/sales/sales_bloc.dart';
import '../../../domain/models/stock.dart';
import '../../core/constants.dart';
import '../../core/navigation.dart';
import '../../core/styles.dart';

class NewItemPopup extends StatelessWidget {
  final int stockId;
  final int qty;
  final StockModel? stockModel;
  const NewItemPopup({
    Key? key,
    this.stockId = 0,
    this.qty = 0,
    this.stockModel,
  }) : super(key: key);

  static String _displayStringForOption(StockModel option) => option.itemName;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      context.read<SalesBloc>().add(const SalesEvent.getAllStocks());
    });
    int stockId = this.stockId;
    int qty = this.qty;

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
            const Text('Choose Item'),
            BlocBuilder<SalesBloc, SalesState>(
              builder: (context, state) {
                return Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.only(top: 3, bottom: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Autocomplete<StockModel>(
                    displayStringForOption: (option) => option.itemName,
                    optionsBuilder: (textEditingValue) {
                      if (textEditingValue.text.trim() == '')
                        return state.stocks;

                      return state.stocks.where((StockModel option) {
                        return option
                            .toString()
                            .contains(textEditingValue.text.toLowerCase());
                      });
                    },
                    optionsViewBuilder: (BuildContext context,
                        AutocompleteOnSelected<StockModel> onSelected,
                        Iterable<StockModel> options) {
                      return Material(
                          child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListView.separated(
                          padding: const EdgeInsets.all(10.0),
                          itemCount: options.length,
                          itemBuilder: (BuildContext context, int index) {
                            final StockModel option = options.elementAt(index);

                            return GestureDetector(
                              onTap: () {
                                onSelected(option);
                              },
                              child: ListTile(
                                title: Text(
                                  option.itemName,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const Divider(color: Colors.white),
                        ),
                      ));
                    },
                    onSelected: (selected) {
                      stockId = selected.id ?? -1;
                      debugPrint(
                          'You just selected ${_displayStringForOption(selected)}');
                    },
                  ),
                );
              },
            ),
            const Text('Qty'),
            SizedBox(
              height: 40,
              child: TextField(
                onChanged: (value) {
                  qty = int.parse(value.trim());
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
      ),
      actions: [
        // cancel button
        ElevatedButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigation.pop();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
        kWidth,
        kWidth,
        // save button
        ElevatedButton(
          child: const Text('Save'),
          onPressed: () {
            String shopIdArgument =
                ModalRoute.of(context)?.settings.arguments as String;
            log(shopIdArgument);
            log(stockId.toString());
            log(qty.toString());
            context
                .read<SalesBloc>()
                .add(SalesEvent.addNewSale(shopIdArgument, stockId, qty));

            Navigation.pop();
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
        ),
        kWidth,
        kWidth,
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}

// class SelectItemWidget extends StatelessWidget {
//   final double? width;
//   final double? height;
//   final List<StockModel> optionList;
//   const SelectItemWidget({
//     Key? key,
//     this.width,
//     this.height,
//     this.optionList = const [],
//   }) : super(key: key);

//   static String _displayStringForOption(StockModel option) => option.itemName;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height ?? 45,
//       width: width,
//       padding: const EdgeInsets.symmetric(horizontal: 5),
//       margin: const EdgeInsets.only(top: 3, bottom: 5),
//       decoration: BoxDecoration(
//         border: Border.all(color: AppColors.grey),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Autocomplete<StockModel>(
//         displayStringForOption: (option) => option.itemName,
//         optionsBuilder: (textEditingValue) async {
//           if (textEditingValue.text.trim() == '') return const Iterable.empty();

//           return optionList.where((StockModel option) {
//             return option
//                 .toString()
//                 .contains(textEditingValue.text.toLowerCase());
//           });
//         },
//         onSelected: (StockModel selection) {
//           debugPrint('You just selected ${_displayStringForOption(selection)}');
//         },
//       ),
//     );
//   }
// }
