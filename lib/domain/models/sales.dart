import 'dart:convert';

class SalesModel {
  final int? id;
  final String vehicle;
  final String route;
  final String shop;
  final String stock;
  final int qty;
  final int unitprice;
  final int totalprice;
  final String date;
  final String errand;

  SalesModel({
    this.id,
    required this.vehicle,
    required this.route,
    required this.shop,
    required this.stock,
    required this.qty,
    required this.unitprice,
    required this.totalprice,
    required this.date,
    required this.errand,
  });

  SalesModel copyWith({
    int? id,
    String? vehicle,
    String? route,
    String? shop,
    String? stock,
    int? qty,
    int? unitprice,
    int? totalprice,
    String? date,
    String? errand,
  }) {
    return SalesModel(
      id: id ?? this.id,
      vehicle: vehicle ?? this.vehicle,
      route: route ?? this.route,
      shop: shop ?? this.shop,
      stock: stock ?? this.stock,
      qty: qty ?? this.qty,
      unitprice: unitprice ?? this.unitprice,
      totalprice: totalprice ?? this.totalprice,
      date: date ?? this.date,
      errand: errand ?? this.errand,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'vehicle': vehicle,
      'route': route,
      'shop': shop,
      'stock': stock,
      'qty': qty,
      'unitprice': unitprice,
      'totalprice': totalprice,
      'date': date,
      'errand': errand,
    };
  }

  factory SalesModel.fromMap(Map<String, dynamic> map) {
    return SalesModel(
      id: map['id']?.toInt(),
      vehicle: map['vehicle'] ?? '',
      route: map['route'] ?? '',
      shop: map['shop'] ?? '',
      stock: map['stock'] ?? '',
      qty: map['qty']?.toInt() ?? 0,
      unitprice: map['unitprice']?.toInt() ?? 0,
      totalprice: map['totalprice']?.toInt() ?? 0,
      date: map['date'] ?? '',
      errand: map['errand'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SalesModel.fromJson(String source) => SalesModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SalesModel(id: $id, vehicle: $vehicle, route: $route, shop: $shop, stock: $stock, qty: $qty, unitprice: $unitprice, totalprice: $totalprice, date: $date, errand: $errand)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SalesModel &&
      other.id == id &&
      other.vehicle == vehicle &&
      other.route == route &&
      other.shop == shop &&
      other.stock == stock &&
      other.qty == qty &&
      other.unitprice == unitprice &&
      other.totalprice == totalprice &&
      other.date == date &&
      other.errand == errand;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      vehicle.hashCode ^
      route.hashCode ^
      shop.hashCode ^
      stock.hashCode ^
      qty.hashCode ^
      unitprice.hashCode ^
      totalprice.hashCode ^
      date.hashCode ^
      errand.hashCode;
  }
}
