import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'widgets/new_item_popup_card.dart';

import '../../application/sales/sales_bloc.dart';
import '../../application/shop/shop_bloc.dart';
import '../../domain/models/shop.dart';
import '../core/constants.dart';
import '../core/styles.dart';
import 'widgets/widgets.dart';

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

//! Header Section
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
          final isLoading = state.isLoading;

          if (state.isError)
            return const Center(
                child: Text('Error in Getting data Plz Try Again'));
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
                      isLoading ? 'Loading...' : data.name,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      isLoading ? 'Loading...' : data.shop_id,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    kHeight,
                    Text(
                      isLoading ? 'Loading...' : data.email,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      isLoading
                          ? 'Loading...'
                          : '+91 ' + data.contact_number.toString(),
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
                            text: isLoading ? 'Loading...' : data.townName,
                            style:
                                const TextStyle(fontStyle: FontStyle.italic)),
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

//! Invoice Creation Section
class _InvoiceCreation extends StatelessWidget {
  const _InvoiceCreation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as ShopModel;
    return BlocBuilder<SalesBloc, SalesState>(
      builder: (context, state) {
        context.read<SalesBloc>().add(const SalesEvent.totalAmound());

        final itemCount = state.salesList.length;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          child: RefreshIndicator(
            onRefresh: () {
              context.read<SalesBloc>().add(const SalesEvent.totalAmound());
              context
                  .read<SalesBloc>()
                  .add(SalesEvent.getAllSalesByShopId(arguments.shop_id));
              return Future.delayed(const Duration(seconds: 1));
            },
            child: ListView.separated(
              itemBuilder: (context, index) {
                if (index == itemCount) {
                  return Card(
                    child: ElevatedButton.icon(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => const NewItemPopup(),
                            routeSettings:
                                RouteSettings(arguments: arguments.shop_id),
                          );
                        },
                        icon: const Icon(Icons.add),
                        label: const Text('Add Item')),
                  );
                }

                final item = state.salesList[index];
                if (state.salesList.isEmpty) {
                  return const Text("  The item list is empty");
                }
                return Card(
                  child: AddItemWidget(
                    saleId: item.id,
                    shop: item.shop,
                    stock: item.stock,
                    qty: item.qty,
                    unitprice: item.unitprice,
                    totalprice: item.totalprice,
                    date: DateFormat('yyyy-mm-dd').format(DateTime.now()),
                  ),
                );
              },
              separatorBuilder: (context, index) => kHeight3,
              itemCount: itemCount + 1,
            ),
          ),
        );
      },
    );
  }
}

//! Footer Section
class _Footer extends StatelessWidget {
  const _Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<SalesBloc>().add(const SalesEvent.totalAmound());
    });
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
          Flexible(child: BlocBuilder<SalesBloc, SalesState>(
            builder: (context, state) {
              final totalPayable = state.total;
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (() {
                      context
                          .read<SalesBloc>()
                          .add(const SalesEvent.totalAmound());
                    }),
                    child: Text(
                      state.isLoading
                          ? 'Loading...'
                          : 'Subtotal : $totalPayable INR',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Pay'),
                    onPressed: () {},
                  ),
                ],
              );
            },
          )),
        ],
      ),
    );
  }
}
