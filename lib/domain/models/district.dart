import 'dart:convert';

class Districtmodel {
  final int id;
  final String name;
  Districtmodel({
    required this.id,
    required this.name,
  });

  Districtmodel copyWith({
    int? id,
    String? name,
  }) {
    return Districtmodel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Districtmodel.fromMap(Map<String, dynamic> map) {
    return Districtmodel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Districtmodel.fromJson(String source) => Districtmodel.fromMap(json.decode(source));

  @override
  String toString() => 'Districtmodel(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Districtmodel &&
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}