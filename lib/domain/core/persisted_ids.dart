/// Stores all the static id for the current sessions
/// including errendId
/// Driver Id -> used to get the details of the driver
/// Vehicle Id -> used to get the details of the vehicle
/// Stock Id -> helps finding all the stocks available for this vehicle
/// Route -> show the FK of the route this vehicle going
class PersistedIds {
  static  String? errandId;
  static  int? driverId;
  static  int? vehicleId;
  static  int? vehicleStockId;
  static  int? routeId;
}
