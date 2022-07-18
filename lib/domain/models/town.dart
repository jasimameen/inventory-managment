import 'dart:convert';

class TownModel {
   int id;
   String name;
   int district;
   String districtName;
  TownModel({
    required this.id,
    required this.name,
    required this.district,
     this.districtName = 'null',
  });

  TownModel copyWith({
    int? id,
    String? name,
    int? district,
    String? districtName,
  }) {
    return TownModel(
      id: id ?? this.id,
      name: name ?? this.name,
      district: district ?? this.district,
      districtName: districtName ?? this.districtName,
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

  factory TownModel.fromJson(String source) => TownModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TownModel(id: $id, name: $name, district: $district, districtName: $districtName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TownModel &&
      other.id == id &&
      other.name == name &&
      other.district == district &&
      other.districtName == districtName;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      district.hashCode ^
      districtName.hashCode;
  }
}
