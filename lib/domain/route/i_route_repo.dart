import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/models/town.dart';

import '../core/failure.dart';
import '../models/route.dart';

abstract class IRouteRepo {
  Future<Either<Failure, RouteModel>> getRouteInfo();
  Future<Either<Failure, List<TownModel>>> getTowns();
  Future<Either<Failure, TownModel>> getTown(int id);
}
