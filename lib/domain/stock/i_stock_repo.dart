import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import '../models/category.dart';
import '../models/item.dart';
import '../models/stock.dart';

abstract class IStockRepo {
  Future<Either<Failure, List<StockModel>>> getVehicleStocks(int id);
  Future<Either<Failure, List<StockModel>>> getWarehouseStocks(int warehouseId);
  Future<Either<Failure, List<ItemModel>>> getAllItems();
  Future<Either<Failure, CategoryModel>> getCategory(int id);
}
