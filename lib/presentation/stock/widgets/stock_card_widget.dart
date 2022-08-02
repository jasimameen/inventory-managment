import 'package:flutter/material.dart';
import '../../core/styles.dart';

const _indexStyle = TextStyle(fontWeight: FontWeight.bold);
const _titleStyle = TextStyle(fontWeight: FontWeight.bold);

const _trailingStyle =
    TextStyle(fontWeight: FontWeight.bold, color: AppColors.red);

class StockCardWidget extends StatelessWidget {
  final String title, stocksCount;
  final String? subtitle;
  final int id;
  const StockCardWidget({
    Key? key,
    required this.title,
    this.subtitle,
    required this.stocksCount,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: PhysicalModel(
        color: Colors.white,
        elevation: 8,
        shadowColor: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        child: ListTile(
          title: Text(title, style: _titleStyle),
          subtitle: Text(subtitle ?? 'category : Kitchen Materials'),
          leading: Text('\n ' + id.toString() + '   ', style: _indexStyle),
          trailing: Text(stocksCount + '   ', style: _trailingStyle),
          selectedTileColor: const Color.fromARGB(255, 201, 193, 193),
        ),
      ),
    );
  }
}
