import 'dart:convert';

class StockModel {
  final int id;
  final String stock_id;
  final int qty;
  final int warehouse;
  final int item;
  StockModel({
    required this.id,
    required this.stock_id,
    required this.qty,
    required this.warehouse,
    required this.item,
  });

  StockModel copyWith({
    int? id,
    String? stock_id,
    int? qty,
    int? warehouse,
    int? item,
  }) {
    return StockModel(
      id: id ?? this.id,
      stock_id: stock_id ?? this.stock_id,
      qty: qty ?? this.qty,
      warehouse: warehouse ?? this.warehouse,
      item: item ?? this.item,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'stock_id': stock_id,
      'qty': qty,
      'warehouse': warehouse,
      'item': item,
    };
  }

  factory StockModel.fromMap(Map<String, dynamic> map) {
    return StockModel(
      id: map['id']?.toInt() ?? 0,
      stock_id: map['stock_id'] ?? '',
      qty: map['qty']?.toInt() ?? 0,
      warehouse: map['warehouse']?.toInt() ?? 0,
      item: map['item']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory StockModel.fromJson(String source) =>
      StockModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Stockmodel(id: $id, stock_id: $stock_id, qty: $qty, warehouse: $warehouse, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StockModel &&
        other.id == id &&
        other.stock_id == stock_id &&
        other.qty == qty &&
        other.warehouse == warehouse &&
        other.item == item;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        stock_id.hashCode ^
        qty.hashCode ^
        warehouse.hashCode ^
        item.hashCode;
  }
}
