import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constands.dart';
import '../../core/styles.dart';

class AddItemWidget extends StatelessWidget {
  const AddItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image
          const Placeholder(
            color: Colors.grey,
            strokeWidth: 1,
            fallbackHeight: 50,
            fallbackWidth: 50,
          ),

          // Title
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const [
                TextSpan(
                  text: 'Item Name \n',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Item Brand",
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          // Base Price
          kWidth,
          Text('20 USD'),

          // Qty
          kWidth,
          Icon(Icons.remove),
          Text('2'),
          Icon(Icons.add),

          //
          // const Spacer(),

          // Base Price
          kWidth,
          const Text(
            '200 USD',
            style: TextStyle(
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
