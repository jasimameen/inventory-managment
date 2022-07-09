import 'package:dartz/dartz.dart';
import '../models/errand.dart';
import '../core/failure.dart';
import '../models/vehicle.dart';
import '../models/driver.dart';

abstract class IErrandRepo {
  Future<Either<Failure, ErrandModel>> getErrentInfo(String errentId);
  Future<Either<Failure, VehicleModel>> getVehicleInfo(int id);
  Future<Either<Failure, DriverModel>> getDriverInfo(int id);
  Future<bool> initialiazeErrand();
}
