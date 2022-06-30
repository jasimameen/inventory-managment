import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invendory_managment/presentation/shop/screen_register_shop.dart';
import '../core/strings.dart';
import '../widgets/square_card_widget.dart';

import '../core/navigation.dart';
import 'screen_shop.dart';

class ScreenAllShops extends StatelessWidget {
  const ScreenAllShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Shops'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: const RegisterShopFAB(),
    );
  }
}

class RegisterShopFAB extends StatelessWidget {
  const RegisterShopFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      child: const Text('Register New Shop'),
      onPressed: () {
        Navigation.push(context, const ScreenRegisterShop());
      },
    );
  }
}
