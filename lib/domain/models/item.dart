import 'dart:convert';

class Itemmodel {
  final int id;
  final String name;
  final int price;
  final int category;
  Itemmodel({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
  });

  Itemmodel copyWith({
    int? id,
    String? name,
    int? price,
    int? category,
  }) {
    return Itemmodel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'category': category,
    };
  }

  factory Itemmodel.fromMap(Map<String, dynamic> map) {
    return Itemmodel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      category: map['category']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Itemmodel.fromJson(String source) => Itemmodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Itemmodel(id: $id, name: $name, price: $price, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Itemmodel &&
      other.id == id &&
      other.name == name &&
      other.price == price &&
      other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      price.hashCode ^
      category.hashCode;
  }
}