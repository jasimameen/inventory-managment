import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invendory_managment/presentation/core/navigation.dart';
import 'package:invendory_managment/presentation/shop/screen_shop.dart';

import '../core/constants.dart';
import 'widgets/profile_widget.dart';
import 'widgets/textfield_widget.dart';

class ScreenRegisterShop extends StatelessWidget {
  const ScreenRegisterShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
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
              // go to shop page
              Navigation.push(
                context,
                ScreenShop(
                    shopName: 'shopName',
                    shopId: 'shopId',
                    shopAddress: 'shopAddress'),
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
              label: 'Shop Name',
              onChanged: (name) {},
            ),
            kHeight,
            TextFieldWidget(
              keyboardType: TextInputType.emailAddress,
              label: 'Email',
              onChanged: (email) {},
            ),
            kHeight,
            TextFieldWidget(
              keyboardType: TextInputType.phone,
              label: 'Contact No',
              onChanged: (about) {},
            ),
            kHeight,
            TextFieldWidget(
              keyboardType: TextInputType.streetAddress,
              label: 'Town',
              onChanged: (about) {},
            ),
            kHeight,
            TextFieldWidget(
              label: 'Area',
              onChanged: (about) {},
            ),
            kHeight,
            TextFieldWidget(
              label: 'District',
              onChanged: (about) {},
            ),
            kHeight,
            TextFieldWidget(
              label: 'Route',
              onChanged: (about) {},
            ),
            kHeight,
            TextFieldWidget(
              label: 'Google Map link',
              onChanged: (about) {},
            ),
          ],
        ),
      );
}
