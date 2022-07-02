import 'dart:convert';

class Categorymodel {
  final int id;
  final String name;
  Categorymodel({
    required this.id,
    required this.name,
  });

  Categorymodel copyWith({
    int? id,
    String? name,
  }) {
    return Categorymodel(
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

  factory Categorymodel.fromMap(Map<String, dynamic> map) {
    return Categorymodel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Categorymodel.fromJson(String source) => Categorymodel.fromMap(json.decode(source));

  @override
  String toString() => 'Categorymodel(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Categorymodel &&
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}