import 'dart:convert';

class Townmodel {
  final int id;
  final String name;
  final int district;
  Townmodel({
    required this.id,
    required this.name,
    required this.district,
  });

  Townmodel copyWith({
    int? id,
    String? name,
    int? district,
  }) {
    return Townmodel(
      id: id ?? this.id,
      name: name ?? this.name,
      district: district ?? this.district,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'district': district,
    };
  }

  factory Townmodel.fromMap(Map<String, dynamic> map) {
    return Townmodel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      district: map['district']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Townmodel.fromJson(String source) => Townmodel.fromMap(json.decode(source));

  @override
  String toString() => 'Townmodel(id: $id, name: $name, district: $district)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Townmodel &&
      other.id == id &&
      other.name == name &&
      other.district == district;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ district.hashCode;
}