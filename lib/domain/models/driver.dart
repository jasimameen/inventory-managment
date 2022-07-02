import 'dart:convert';

class Drivermodel {
  final int id;
  final String name;
  final int contact;
  final int vehicle;
  Drivermodel({
    required this.id,
    required this.name,
    required this.contact,
    required this.vehicle,
  });

  Drivermodel copyWith({
    int? id,
    String? name,
    int? contact,
    int? vehicle,
  }) {
    return Drivermodel(
      id: id ?? this.id,
      name: name ?? this.name,
      contact: contact ?? this.contact,
      vehicle: vehicle ?? this.vehicle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'contact': contact,
      'vehicle': vehicle,
    };
  }

  factory Drivermodel.fromMap(Map<String, dynamic> map) {
    return Drivermodel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      contact: map['contact']?.toInt() ?? 0,
      vehicle: map['vehicle']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Drivermodel.fromJson(String source) => Drivermodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Drivermodel(id: $id, name: $name, contact: $contact, vehicle: $vehicle)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Drivermodel &&
      other.id == id &&
      other.name == name &&
      other.contact == contact &&
      other.vehicle == vehicle;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      contact.hashCode ^
      vehicle.hashCode;
  }
}