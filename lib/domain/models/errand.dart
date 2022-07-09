import 'dart:convert';

class ErrandModel {
  final int id;
  final int driver;
  final String errand_id;
  final int route;
  ErrandModel({
    required this.id,
    required this.driver,
    required this.errand_id,
    required this.route,
  });

  ErrandModel copyWith({
    int? id,
    int? driver,
    String? errand_id,
    int? route,
  }) {
    return ErrandModel(
      id: id ?? this.id,
      driver: driver ?? this.driver,
      errand_id: errand_id ?? this.errand_id,
      route: route ?? this.route,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'driver': driver,
      'errand_id': errand_id,
      'route': route,
    };
  }

  factory ErrandModel.fromMap(Map<String, dynamic> map) {
    return ErrandModel(
      id: map['id']?.toInt() ?? 0,
      driver: map['driver']?.toInt() ?? 0,
      errand_id: map['errand_id'] ?? '',
      route: map['route']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrandModel.fromJson(String source) =>
      ErrandModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Errandmodel(id: $id, driver: $driver, errand_id: $errand_id, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ErrandModel &&
        other.id == id &&
        other.driver == driver &&
        other.errand_id == errand_id &&
        other.route == route;
  }

  @override
  int get hashCode {
    return id.hashCode ^ driver.hashCode ^ errand_id.hashCode ^ route.hashCode;
  }
}
