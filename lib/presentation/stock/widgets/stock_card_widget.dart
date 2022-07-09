import 'package:flutter/material.dart';

class StockCardWidget extends StatelessWidget {
  final String title, subtitle;
  final int id;
  const StockCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Text(id.toString() + '   '),
      trailing: Text(subtitle),
      selectedTileColor:const Color.fromARGB(255, 201, 193, 193),
    );
  }
}
