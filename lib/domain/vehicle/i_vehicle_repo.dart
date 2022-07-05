import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:invendory_managment/domain/models/vehicle.dart';

abstract class IVehicleRepo {
  Future<Either<Failure, VehicleModel>> getVehicleInfo();
}
