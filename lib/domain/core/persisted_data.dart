import 'package:invendory_managment/domain/models/shop.dart';
import 'package:invendory_managment/domain/models/town.dart';

import '../models/driver.dart';
import '../models/errand.dart';
import '../models/route.dart';
import '../models/vehicle.dart';

/// Stores all the static id for the current sessions
/// including errendId
/// Driver Id -> used to get the details of the driver
/// Vehicle Id -> used to get the details of the vehicle
/// Stock Id -> helps finding all the stocks available for this vehicle
/// Route -> show the FK of the route this vehicle going
class PersistedData {
  static String? errandId;
  static ErrandModel? errandModel;

  static int? driverId;
  static DriverModel? driverModel;

  static int? vehicleId;
  static VehicleModel? vehicleModel;

  static int? vehicleStockId;

  static int? routeId;
  static RouteModel? routeModel;

  static List<int>? towns;
  static List<TownModel>? townModels;

  static List<int>? shops;
  
}
