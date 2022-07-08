import 'package:flutter/material.dart';

class StockCardWidget extends StatelessWidget {
  final String title, subtitle;
  const StockCardWidget({
    Key? key,
   required this.title,
   required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
