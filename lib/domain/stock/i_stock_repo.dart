import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:invendory_managment/domain/models/category.dart';
import 'package:invendory_managment/domain/models/item.dart';
import 'package:invendory_managment/domain/models/stock.dart';

abstract class IStockRepo {
  Future<Either<Failure, List<StockModel>>> getVehicleStocks(int id);
  Future<Either<Failure, List<StockModel>>> getWarehouseStocks(int warehouseId);
  Future<Either<Failure, List<ItemModel>>> getAllItems();
  Future<Either<Failure, CategoryModel>> getCategory(int id);
}
