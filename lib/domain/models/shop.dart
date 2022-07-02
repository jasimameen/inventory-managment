import 'dart:convert';

class ShopModel {
  final int id;
  final String name;
  final String shop_id;
  final int contact_number;
  final String email;
  final int town;
  ShopModel({
    required this.id,
    required this.name,
    required this.shop_id,
    required this.contact_number,
    required this.email,
    required this.town,
  });

  ShopModel copyWith({
    int? id,
    String? name,
    String? shop_id,
    int? contact_number,
    String? email,
    int? town,
  }) {
    return ShopModel(
      id: id ?? this.id,
      name: name ?? this.name,
      shop_id: shop_id ?? this.shop_id,
      contact_number: contact_number ?? this.contact_number,
      email: email ?? this.email,
      town: town ?? this.town,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'shop_id': shop_id,
      'contact_number': contact_number,
      'email': email,
      'town': town,
    };
  }

  factory ShopModel.fromMap(Map<String, dynamic> map) {
    return ShopModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      shop_id: map['shop_id'] ?? '',
      contact_number: map['contact_number']?.toInt() ?? 0,
      email: map['email'] ?? '',
      town: map['town']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopModel.fromJson(String source) =>
      ShopModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Shopmodel(id: $id, name: $name, shop_id: $shop_id, contact_number: $contact_number, email: $email, town: $town)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopModel &&
        other.id == id &&
        other.name == name &&
        other.shop_id == shop_id &&
        other.contact_number == contact_number &&
        other.email == email &&
        other.town == town;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        shop_id.hashCode ^
        contact_number.hashCode ^
        email.hashCode ^
        town.hashCode;
  }
}