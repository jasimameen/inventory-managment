import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invendory_managment/presentation/core/strings.dart';
import 'package:invendory_managment/presentation/core/styles.dart';

import '../core/constands.dart';
import 'widgets/widgets.dart';

class ScreenShop extends StatelessWidget {
  const ScreenShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image
          const Placeholder(
            color: Colors.grey,
            strokeWidth: 1,
            fallbackHeight: 90,
            fallbackWidth: 90,
          ),

          // Shop Details
          kWidth,
          LimitedBox(
            maxWidth: screenSize.width * .5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Shop Name',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                Text('shop_id',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontStyle: FontStyle.italic,
                    )),
                kHeight,
                Text(
                  dummyAddres,
                  // maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
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
              const Text(
                '+91 XXXXXXX08',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              kHeight,

              // location
              const Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.place, color: AppColors.red)),
                    TextSpan(
                      text: "Calicut",
                      // style: TextStyle(fontStyle: FontStyle.italic)
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
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
    return ListView.separated(
      itemBuilder: (context, index) => AddItemWidget(),
      separatorBuilder: (context, index) => kHeight,
      itemCount: 10,
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
      height: 50,
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
                'Subtotal : 1700 USD',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ElevatedButton(child: Text("Pay"), onPressed: () {})
            ],
          )),
        ],
      ),
    );
  }
}
