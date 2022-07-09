import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Shops'),
      ),
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          final allShops = state.shopsList;

          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: AppColors.green),
                )
              : Wrap(
                  children: List.generate(
                      allShops.length,
                      (index) => SquareCardWidget(
                          title: allShops[index].name,
                          iconData: Icons.business_rounded,
                          iconColor: Colors.redAccent,
                          onTap: () {
                            Navigation.push(
                              ScreenShop(
                                shopName: allShops[index].name,
                                shopId: '000' + allShops[index].shop_id,
                                town: allShops[index].townModel?.name ?? 'null',
                                email: allShops[index].email,
                                contactNumber:
                                    allShops[index].contact_number.toString(),
                              ),
                            );
                          })),
                );
        },
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
        Navigation.push(const ScreenRegisterShop());
      },
    );
  }
}
