import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/route/route_bloc.dart';
import '../../application/shop/shop_bloc.dart';
import '../core/constants.dart';
import '../core/styles.dart';
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

  static void clearAll() {
    log('clearing');
    shopName.clear();
    email.clear();
    contactNumber.clear();
    town.clear();
    area.clear();
    district.clear();
    route.clear();
    mapLink.clear();
  }
}

class ScreenRegisterShop extends StatelessWidget {
  const ScreenRegisterShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<RouteBloc>(context).add(const RouteEvent.started());
    });
    return Scaffold(
      appBar: CupertinoNavigationBar(
        previousPageTitle: 'Shops',
        middle: const Text('Shop Registration'),
        trailing: TextButton(
          child: const Text(
            'Register Now',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {
            // add the shop to db
            context.read<ShopBloc>().add(const ShopEvent.registerNewShop());
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
          BlocBuilder<RouteBloc, RouteState>(builder: (context, state) {
            final items = state.towns.map((town) => town.name).toList();
            String dropdownValue = items[0];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.grey),
              ),
              child: DropdownButton(
                value: dropdownValue,
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  dropdownValue = newValue!;
                  RegShopControllers.town.text = state.towns
                      .firstWhere((element) => element.name == newValue)
                      .id
                      .toString();
                },
                borderRadius: BorderRadius.circular(12),
                iconSize: 0,
                underline: const SizedBox(),
                elevation: 5,
              ),
            );
          }),
          kHeight,
        ],
      ),
    );
  }
}
