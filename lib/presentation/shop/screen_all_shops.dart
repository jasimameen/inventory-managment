import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/presentation/widgets/custom_app_bar.dart';
import 'widgets/shop_tile_widget.dart';
import '../core/constants.dart';

import '../../application/shop/shop_bloc.dart';
import '../core/navigation.dart';
import '../core/styles.dart';
import '../widgets/square_card_widget.dart';
import 'screen_register_shop.dart';
import 'screen_shop.dart';

class ScreenAllShops extends StatelessWidget {
  const ScreenAllShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<ShopBloc>().add(const ShopEvent.getAllShops());
    });
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kAppBarHeight),
        child: CustomAppBar(
          previousPageTitle: 'Home',
          middle: 'Shops',
        ),
      ),
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          final shopList = state.shopsList;

          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: AppColors.green),
                )
              : Wrap(
                  children: List.generate(shopList.length, (index) {
                    final data = shopList[index];
                    return ShopTileHorizontalWidget(
                        shopData: data,
                        onTap: () {
                          Navigation.push(
                            const ScreenShop(),
                            arguments: data,
                          );
                        });

                    // return SquareCardWidget(
                    //     title: data.name,
                    //     iconData: Icons.business_rounded,
                    //     iconColor: getRandomColor,
                    //     onTap: () {
                    //       Navigation.push(
                    //         const ScreenShop(),
                    //         arguments: data,
                    //       );
                    //     });
                  }),
                );
        },
      ),
      backgroundColor: const Color.fromARGB(255, 245, 241, 241),
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
    return GestureDetector(
      onTap: () {
        Navigation.push(ScreenRegisterShop());
      },
      child: PhysicalModel(
        color: AppColors.red,
        borderRadius: BorderRadius.circular(20),
        elevation: 10,
        child: SizedBox(
          height: 45,
          width: MediaQuery.of(context).size.width * .60,
          child: const Center(
            child: Text('Register New Shop',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                )),
          ),
        ),
      ),
    );
  }
}
