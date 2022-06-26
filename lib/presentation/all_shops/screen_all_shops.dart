import 'package:flutter/material.dart';
import '../core/strings.dart';
import '../widgets/square_card_widget.dart';

import '../core/navigation.dart';
import '../shop/screen_shop.dart';

class ScreenAllShops extends StatelessWidget {
  const ScreenAllShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigation.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Screen Dashboard'),
      ),
      body: Wrap(
        children: List.generate(
            10,
            (index) => SquareCardWidget(
                title: 'Shop $index',
                iconData: Icons.business_rounded,
                iconColor: Colors.redAccent,
                onTap: () {
                  Navigation.push(
                    context,
                    ScreenShop(
                        shopName: 'Shop $index',
                        shopId: '000$index',
                        shopAddress: dummyAddres),
                  );
                })),
      ),
    );
  }
}
