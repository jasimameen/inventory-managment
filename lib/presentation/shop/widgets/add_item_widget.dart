import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/styles.dart';

class AddItemWidget extends StatelessWidget {
  final String shop;
  final String stock;
  final int qty;
  final int unitprice;
  final int totalprice;
  final String date;
  const AddItemWidget({
    Key? key,
    required this.shop,
    required this.stock,
    required this.qty,
    required this.unitprice,
    required this.totalprice,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image
          // const Placeholder(
          //   color: Colors.grey,
          //   strokeWidth: 1,
          //   fallbackHeight: 30,
          //   fallbackWidth: 30,
          // ),

          // Title
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: stock + '\n',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Item Brand",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          // Base Price
          kWidth,
          SizedBox(
            width: 50,
            height: 30,
            child: TextField(
              controller: TextEditingController(
                  text: unitprice.toString()), // price controller
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                  prefix: Icon(
                Icons.currency_rupee,
                color: AppColors.green,
                size: 20,
              )),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
            ),
          ),

          // Qty
          kWidth,
          const Icon(Icons.remove),
          Text(qty.toString()),
          const Icon(Icons.add),

          //
          // const Spacer(),

          // Base Price
          kWidth,
          Text(
            totalprice.toString() + ' INR',
            style: const TextStyle(
              color: AppColors.green,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Delete Button
          const Icon(
            CupertinoIcons.delete,
            color: AppColors.red,
          )
        ],
      ),
    );
  }
}
