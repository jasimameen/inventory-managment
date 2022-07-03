import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:invendory_managment/domain/models/warehouse.dart';

abstract class IWareHouseRepo {
  Future<Either<Failure, List<WareHouseModel>>> getAllWareHouses();
}
