import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/application/sales/sales_bloc.dart';

import '../../application/shop/shop_bloc.dart';
import '../core/constants.dart';
import '../core/styles.dart';
import 'widgets/widgets.dart';

String _shopName = '';
String _shopId = '';
String _email = '';
String _contactNumber = '';
String _town = '';

class ScreenShop extends StatelessWidget {
  final String shopName;
  final String shopId;
  final String email;
  final String contactNumber;
  final String town;

  ScreenShop({
    Key? key,
    required this.shopName,
    required this.shopId,
    required this.email,
    required this.contactNumber,
    required this.town,
  }) : super(key: key) {
    _shopName = shopName;
    _shopId = shopId;
    _email = email;
    _contactNumber = contactNumber;
    _town = town;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<ShopBloc>().add( ShopEvent.getSales(shopId));
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            // Header
            _Header(),
            Divider(thickness: 5),

            // InvoiceCreation
            Expanded(
              child: _InvoiceCreation(),
            ),

            // Footer
            Divider(thickness: 5),
            _Footer(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          final data = state.shopModel;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // image
              // const Placeholder(
              //   color: Colors.grey,
              //   strokeWidth: 1,
              //   fallbackHeight: 90,
              //   fallbackWidth: 90,
              // ),

              // Shop Details
              kWidth,
              LimitedBox(
                maxWidth: screenSize.width * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      data.shop_id,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    kHeight,
                    Text(
                      data.email,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      '+91 ' + data.contact_number.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    kHeight,
                  ],
                ),
              ),

              // Call , location
              Flexible(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    label: const Text("Call"),
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.phone_fill),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.green,
                    ),
                  ),
                  kHeight,
                  // const Text(
                  //   '+91 XXXXXXX08',
                  //   style: TextStyle(fontWeight: FontWeight.bold),
                  // ),
                  // kHeight,

                  // location
                  Text.rich(
                    TextSpan(
                      children: [
                        const WidgetSpan(
                            child: Icon(Icons.place, color: AppColors.red)),
                        TextSpan(
                          text: data.townModel!.name,
                          // style: TextStyle(fontStyle: FontStyle.italic)
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          );
        },
      ),
    );
  }
}

class _InvoiceCreation extends StatelessWidget {
  const _InvoiceCreation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<SalesBloc>().add(SalesEvent.getAllSalesByShopId(_shopId));
    });
    return BlocBuilder<SalesBloc, SalesState>(
      builder: (context, state) {
        final itemCount = state.salesList.length;
        return ListView.separated(
          itemBuilder: (context, index) {
            final item = state.salesList;
            log(item.toString());
            //
            return Text("hello");
            // '${item.stock} ${item.unitprice}/piece  ${item.qty}  ${item.totalprice}INR');

            //
            // return AddItemWidget(
            //   shop: item.shop,
            //   stock: item.stock,
            //   qty: item.qty,
            //   unitprice: item.unitprice,
            //   totalprice: item.totalprice,
            //   date: DateTime.now().toIso8601String(),
            // );
          },
          separatorBuilder: (context, index) => kHeight3,
          itemCount: itemCount,
        );
      },
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton.icon(
            label: Text("Print Invoice",
                style: DefaultTextStyle.of(context).style),
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.printer,
              color: AppColors.red,
            ),
          ),
          Flexible(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Subtotal : 1700 USD',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                  child: const Text('Pay'),
                  onPressed: () {
                    context
                        .read<SalesBloc>()
                        .add(SalesEvent.getAllSalesByShopId(_shopId));
                  }),
            ],
          )),
        ],
      ),
    );
  }
}
