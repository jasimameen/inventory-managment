import 'package:flutter/material.dart';

import '../../../domain/models/shop.dart';
import '../../core/constants.dart';

class ShopTileHorizontalWidget extends StatelessWidget {
  final ShopModel shopData;
  final void Function()? onTap;
  const ShopTileHorizontalWidget({
    Key? key,
    required this.shopData,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // left side -> shopname, shop_id
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shopData.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    kHeight3,
                    Text(
                      shopData.shop_id,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),

                // right side -> shopLocation, Contact No
                Column(
                  children: [
                    Text(shopData.townName ?? 'unknown'),
                    kHeight3,
                    Text(
                      '+91 ' + shopData.contact_number.toString(),
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
