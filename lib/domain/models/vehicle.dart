import 'dart:convert';

class Vehiclemodel {
  final int id;
  final String vehicle_number;
  final String vehicle_type;
  final int stock;
  Vehiclemodel({
    required this.id,
    required this.vehicle_number,
    required this.vehicle_type,
    required this.stock,
  });

  Vehiclemodel copyWith({
    int? id,
    String? vehicle_number,
    String? vehicle_type,
    int? stock,
  }) {
    return Vehiclemodel(
      id: id ?? this.id,
      vehicle_number: vehicle_number ?? this.vehicle_number,
      vehicle_type: vehicle_type ?? this.vehicle_type,
      stock: stock ?? this.stock,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'vehicle_number': vehicle_number,
      'vehicle_type': vehicle_type,
      'stock': stock,
    };
  }

  factory Vehiclemodel.fromMap(Map<String, dynamic> map) {
    return Vehiclemodel(
      id: map['id']?.toInt() ?? 0,
      vehicle_number: map['vehicle_number'] ?? '',
      vehicle_type: map['vehicle_type'] ?? '',
      stock: map['stock']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Vehiclemodel.fromJson(String source) => Vehiclemodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vehiclemodel(id: $id, vehicle_number: $vehicle_number, vehicle_type: $vehicle_type, stock: $stock)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Vehiclemodel &&
      other.id == id &&
      other.vehicle_number == vehicle_number &&
      other.vehicle_type == vehicle_type &&
      other.stock == stock;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      vehicle_number.hashCode ^
      vehicle_type.hashCode ^
      stock.hashCode;
  }
}