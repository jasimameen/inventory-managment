import 'dart:convert';

class ItemModel {
  final int id;
  final String name;
  final int price;
  final int category;
  ItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
  });

  ItemModel copyWith({
    int? id,
    String? name,
    int? price,
    int? category,
  }) {
    return ItemModel(
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

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      category: map['category']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Itemmodel(id: $id, name: $name, price: $price, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemModel &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ price.hashCode ^ category.hashCode;
  }
}
