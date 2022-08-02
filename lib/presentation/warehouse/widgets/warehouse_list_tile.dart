import 'package:flutter/material.dart';
import 'package:invendory_managment/domain/models/warehouse.dart';

import '../../../domain/models/shop.dart';
import '../../core/constants.dart';

class WareHouseListTile extends StatelessWidget {
  final WarehouseModel warehouseData;
  final void Function()? onTap;
  const WareHouseListTile({
    Key? key,
    required this.warehouseData,
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
                      warehouseData.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    kHeight3,
                    Text(
                      warehouseData.warehouse_id,
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
                    Text(warehouseData.townModel?.name ?? ''),
                    kHeight3,
                    Text(
                      warehouseData.townModel?.districtName ?? '',
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
