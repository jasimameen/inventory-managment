import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/shop/shop_bloc.dart';
import '../core/navigation.dart';
import 'screen_shop.dart';

import '../core/constants.dart';
import 'widgets/profile_widget.dart';
import 'widgets/textfield_widget.dart';

class RegShopControllers {
  static TextEditingController shopName = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController contactNumber = TextEditingController();
  static TextEditingController town = TextEditingController();
  static TextEditingController area = TextEditingController();
  static TextEditingController district = TextEditingController();
  static TextEditingController route = TextEditingController();
  static TextEditingController mapLink = TextEditingController();
}

class ScreenRegisterShop extends StatelessWidget {
  const ScreenRegisterShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: const Icon(CupertinoIcons.back),
        middle: const Text('Shop Registration'),
        trailing: TextButton(
          child: const Text(
            'Register Now',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {
            // add the shop to db
            context.read<ShopBloc>().add(const ShopEvent.registerNewShop());

            // go to shop page
            Navigation.push(
              context,
              ScreenShop(
                shopName: 'shopName',
                shopId: 'shopId',
                shopAddress: 'shopAddress',
              ),
            );
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: 'user.imagePath',
            isEdit: true,
            onClicked: () async {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.shopName,
            label: 'Shop Name',
            onChanged: (name) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.email,
            keyboardType: TextInputType.emailAddress,
            label: 'Email',
            onChanged: (email) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.contactNumber,
            keyboardType: TextInputType.phone,
            label: 'Contact No',
            onChanged: (about) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.town,
            keyboardType: TextInputType.streetAddress,
            label: 'Town',
            onChanged: (about) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.area,
            label: 'Area',
            onChanged: (about) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.district,
            label: 'District',
            onChanged: (about) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.route,
            label: 'Route',
            onChanged: (about) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: RegShopControllers.mapLink,
            label: 'Google Map link',
            onChanged: (about) {},
          ),
        ],
      ),
    );
  }
}
