import 'dart:convert';

class TownModel {
  final int id;
  final String name;
  final int district;
  TownModel({
    required this.id,
    required this.name,
    required this.district,
  });

  TownModel copyWith({
    int? id,
    String? name,
    int? district,
  }) {
    return TownModel(
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

  factory TownModel.fromMap(Map<String, dynamic> map) {
    return TownModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      district: map['district']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory TownModel.fromJson(String source) =>
      TownModel.fromMap(json.decode(source));

  @override
  String toString() => 'Townmodel(id: $id, name: $name, district: $district)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TownModel &&
        other.id == id &&
        other.name == name &&
        other.district == district;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ district.hashCode;
}
