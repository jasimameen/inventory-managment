import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/models/models_exported.dart';

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
  ScreenRegisterShop({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactNoController = TextEditingController();
  TextEditingController townController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<RouteBloc>().add(const RouteEvent.started());
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
            final shopData = ShopModel(
              name: nameController.text.trim(),
              shop_id: nameController.text.toLowerCase().trim(),
              contact_number: int.parse(contactNoController.text.trim()),
              email: emailController.text.trim(),
              town: int.parse(townController.text.trim()),
            );
            context.read<ShopBloc>().add(ShopEvent.registerNewShop(shopData));
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
          BlocBuilder<RouteBloc, RouteState>(builder: (context, state) {
            var towns = state.towns;
            return Autocomplete<TownModel>(
              displayStringForOption: (option) => option.name,
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return towns;
                }
                return towns.where((TownModel option) => option
                    .toString()
                    .contains(textEditingValue.text.toLowerCase()));
              },
              fieldViewBuilder: (BuildContext context,
                  TextEditingController fieldTextEditingController,
                  FocusNode fieldFocusNode,
                  VoidCallback onFieldSubmitted) {
                return TextFieldWidget(
                  controller: fieldTextEditingController,
                  focusNode: fieldFocusNode,
                  keyboardType: TextInputType.streetAddress,
                  label: 'Select Town',
                  onChanged: (_) {},
                );
              },
              optionsViewBuilder: (BuildContext context,
                  AutocompleteOnSelected<TownModel> onSelected,
                  Iterable<TownModel> options) {
                return Align(
                    alignment: Alignment.topLeft,
                    child: Material(
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
                            final TownModel option = options.elementAt(index);

                            return GestureDetector(
                              onTap: () {
                                onSelected(option);
                              },
                              child: ListTile(
                                title: Text(option.name,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                             const Divider(color: Colors.white),
                        ),
                      ),
                    ));
              },
              onSelected: (TownModel selection) =>
                  townController.text = selection.id.toString(),
            );
          }),
          kHeight,
          TextFieldWidget(
            controller: nameController,
            label: 'Shop Name',
            onChanged: (name) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            label: 'Email',
            onChanged: (email) {},
          ),
          kHeight,
          TextFieldWidget(
            controller: contactNoController,
            keyboardType: TextInputType.phone,
            label: 'Contact No',
            onChanged: (contactNo) {},
          ),
          kHeight,
        ],
      ),
    );
  }
}
