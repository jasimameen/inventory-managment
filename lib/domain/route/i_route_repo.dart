import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import '../models/route.dart';
import '../models/town.dart';

abstract class IRouteRepo {
  Future<Either<Failure, RouteModel>> getRouteInfo();
  Future<Either<Failure, List<TownModel>>> getTowns();
  Future<Either<Failure, TownModel>> getTown(int id);
}
