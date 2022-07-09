import 'dart:convert';

class WarehouseModel {
  final int id;
  final String name;
  final String warehouse_id;
  final int town;
  WarehouseModel({
    required this.id,
    required this.name,
    required this.warehouse_id,
    required this.town,
  });

  WarehouseModel copyWith({
    int? id,
    String? name,
    String? warehouse_id,
    int? town,
  }) {
    return WarehouseModel(
      id: id ?? this.id,
      name: name ?? this.name,
      warehouse_id: warehouse_id ?? this.warehouse_id,
      town: town ?? this.town,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'warehouse_id': warehouse_id,
      'town': town,
    };
  }

  factory WarehouseModel.fromMap(Map<String, dynamic> map) {
    return WarehouseModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      warehouse_id: map['warehouse_id'] ?? '',
      town: map['town']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory WarehouseModel.fromJson(String source) =>
      WarehouseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Warehousemodel(id: $id, name: $name, warehouse_id: $warehouse_id, town: $town)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WarehouseModel &&
        other.id == id &&
        other.name == name &&
        other.warehouse_id == warehouse_id &&
        other.town == town;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ warehouse_id.hashCode ^ town.hashCode;
  }
}
