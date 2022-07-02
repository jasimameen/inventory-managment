import 'dart:convert';

class Salesmodel {
  final int id;
  final String vehicle;
  final String route;
  final String shop;
  final String stock;
  final int qty;
  final int unitprice;
  final int totalprice;
  final String date;
  final String errand;
  Salesmodel({
    required this.id,
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

  Salesmodel copyWith({
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
    return Salesmodel(
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

  factory Salesmodel.fromMap(Map<String, dynamic> map) {
    return Salesmodel(
      id: map['id']?.toInt() ?? 0,
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

  factory Salesmodel.fromJson(String source) => Salesmodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Salesmodel(id: $id, vehicle: $vehicle, route: $route, shop: $shop, stock: $stock, qty: $qty, unitprice: $unitprice, totalprice: $totalprice, date: $date, errand: $errand)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Salesmodel &&
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