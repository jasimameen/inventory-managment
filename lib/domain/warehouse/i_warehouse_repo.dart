import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import '../models/warehouse.dart';

abstract class IWareHouseRepo {
  Future<Either<Failure, List<WareHouseModel>>> getAllWareHouses();
}
