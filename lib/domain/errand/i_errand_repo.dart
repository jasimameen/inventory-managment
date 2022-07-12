import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import '../models/driver.dart';
import '../models/errand.dart';
import '../models/vehicle.dart';

abstract class IErrandRepo {
  Future<Either<Failure, ErrandModel>> getErrentInfo(String errentId);
  Future<Either<Failure, VehicleModel>> getVehicleInfo(int id);
  Future<Either<Failure, DriverModel>> getDriverInfo(int id);
  Future<bool> initialiazeErrand();
}
