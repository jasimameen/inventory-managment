import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:invendory_managment/domain/models/sales.dart';
import 'package:invendory_managment/domain/models/town.dart';

class ShopModel {
  final int? id;
  final String name;
  final String shop_id;
  final int contact_number;
  final String email;
  final TownModel? townModel;
  final int town;
  // final List<SalesModel> sales;
  ShopModel({
    this.id,
    required this.name,
    required this.shop_id,
    required this.contact_number,
    required this.email,
    this.townModel,
    required this.town,
  });

  ShopModel copyWith({
    int? id,
    String? name,
    String? shop_id,
    int? contact_number,
    String? email,
    TownModel? townModel,
    int? town,
  }) {
    return ShopModel(
      id: id ?? this.id,
      name: name ?? this.name,
      shop_id: shop_id ?? this.shop_id,
      contact_number: contact_number ?? this.contact_number,
      email: email ?? this.email,
      townModel: townModel ?? this.townModel,
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
      'townModel': townModel?.toMap(),
      'town': town,
    };
  }

  factory ShopModel.fromMap(Map<String, dynamic> map) {
    return ShopModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      shop_id: map['shop_id'] ?? '',
      contact_number: map['contact_number']?.toInt() ?? 0,
      email: map['email'] ?? '',
      townModel: map['townModel'] != null ? TownModel.fromMap(map['townModel']) : null,
      town: map['town']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopModel.fromJson(String source) =>
      ShopModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShopModel(id: $id, name: $name, shop_id: $shop_id, contact_number: $contact_number, email: $email, townModel: $townModel, town: $town)';
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
      other.townModel == townModel &&
      other.town == town;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      shop_id.hashCode ^
      contact_number.hashCode ^
      email.hashCode ^
      townModel.hashCode ^
      town.hashCode;
  }
}
