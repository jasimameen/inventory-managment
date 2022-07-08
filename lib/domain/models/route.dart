import 'dart:convert';

import 'package:flutter/foundation.dart';

class RouteModel {
  final int id;
  final String name;
  final String route_id;
  final List<int> towns;
  final List<int> shops;
  RouteModel({
    required this.id,
    required this.name,
    required this.route_id,
    required this.towns,
    required this.shops,
  });

  RouteModel copyWith({
    int? id,
    String? name,
    String? route_id,
    List<int>? towns,
    List<int>? shops,
  }) {
    return RouteModel(
      id: id ?? this.id,
      name: name ?? this.name,
      route_id: route_id ?? this.route_id,
      towns: towns ?? this.towns,
      shops: shops ?? this.shops,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'route_id': route_id,
      'towns': towns,
      'shops': shops,
    };
  }

  factory RouteModel.fromMap(Map<String, dynamic> map) {
    return RouteModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      route_id: map['route_id'] ?? '',
      towns: List<int>.from(map['towns']),
      shops: List<int>.from(map['shops']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RouteModel.fromJson(String source) =>
      RouteModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Routemodel(id: $id, name: $name, route_id: $route_id, towns: $towns, shops: $shops)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RouteModel &&
        other.id == id &&
        other.name == name &&
        other.route_id == route_id &&
        listEquals(other.towns, towns) &&
        listEquals(other.shops, shops);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        route_id.hashCode ^
        towns.hashCode ^
        shops.hashCode;
  }
}
