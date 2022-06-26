import 'package:flutter/material.dart';
import 'package:invendory_managment/presentation/core/styles.dart';

import '../core/navigation.dart';
import '../widgets/square_card_widget.dart';

class ScreenStock extends StatelessWidget {
  final String title;
  const ScreenStock({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigation.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(title),
      ),
      body: Wrap(
        children: List.generate(
            20,
            (index) => SquareCardWidget(
                  title: '34$index Stocks Left',
                  textStyle: const TextStyle(
                    color: AppColors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  iconData: Icons.production_quantity_limits,
                  iconColor: Colors.redAccent,
                  onTap: () {},
                )),
      ),
    );
  }
}
