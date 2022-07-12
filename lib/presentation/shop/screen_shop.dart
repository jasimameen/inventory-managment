import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/sales/sales_bloc.dart';
import '../../application/shop/shop_bloc.dart';
import '../../domain/models/shop.dart';
import '../core/constants.dart';
import '../core/styles.dart';
import 'widgets/widgets.dart';

num _subtotal = 0;

class ScreenShop extends StatelessWidget {
  const ScreenShop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as ShopModel;
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<ShopBloc>().add(ShopEvent.getShop(arguments.shop_id));
      context
          .read<SalesBloc>()
          .add(SalesEvent.getAllSalesByShopId(arguments.shop_id));
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
          log(data.toString());
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
                          text: data.townModel?.name ?? 'null',
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
    return BlocBuilder<SalesBloc, SalesState>(
      builder: (context, state) {
        final itemCount = state.salesList.length;
        return ListView.separated(
          itemBuilder: (context, index) {
            final item = state.salesList[index];
            _subtotal += item.totalprice;
            if (state.salesList.isEmpty) {
              return const Text("  The item list is empty");
            }
            return AddItemWidget(
              shop: item.shop,
              stock: item.stock,
              qty: item.qty,
              unitprice: item.unitprice,
              totalprice: item.totalprice,
              date: DateTime.now().toIso8601String(),
            );
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
              Text(
                'Subtotal : $_subtotal INR',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(child: const Text('Pay'), onPressed: () {}),
            ],
          )),
        ],
      ),
    );
  }
}
