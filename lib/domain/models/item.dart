import 'dart:convert';

class ItemModel {
  int id;
  String name;
  int price;
  int category;
  String categoryName;
  ItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.categoryName,
  });

  ItemModel copyWith({
    int? id,
    String? name,
    int? price,
    int? category,
    String? categoryName,
  }) {
    return ItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      category: category ?? this.category,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'category': category,
      'categoryName': categoryName,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      category: map['category']?.toInt() ?? 0,
      categoryName: map['categoryName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemModel(id: $id, name: $name, price: $price, category: $category, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemModel &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.category == category &&
        other.categoryName == categoryName;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        category.hashCode ^
        categoryName.hashCode;
  }
}
