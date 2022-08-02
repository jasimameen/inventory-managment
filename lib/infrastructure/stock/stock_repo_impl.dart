import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/category.dart';
import '../../domain/models/item.dart';
import '../../domain/models/stock.dart';
import '../../domain/stock/i_stock_repo.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IStockRepo)
class StockRepoImpl implements IStockRepo {
  // get all the Vehicle Stocks
  @override
  Future<Either<Failure, List<StockModel>>> getVehicleStocks(int id,
      {flag = 5}) async {
    try {
      final resp = await dio.get(ApiEndpoints.stock);
      log('warehouse stocks -> ${resp.data}');
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = (resp.data as List<dynamic>)
            .map((e) => StockModel.fromMap(e))
            .toList();
        log('vehicle stocks from remote --> ${result.toString()}');
        return right(result);
      }
    } on DioError catch (e) {
      log(e.toString());
      await AuthRepoImpl().refresh();
      getVehicleStocks(id);
    }
    throw left(const Failure.cliendFailure());
  }

  /// getWarehousStocks
  @override
  Future<Either<Failure, List<StockModel>>> getWarehouseStocks(int warehouseId,
      {flag = 5}) async {
    try {
      final resp = await dio.get(ApiEndpoints.stock);
      log('warehouse stocks -> ${resp.data}');
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = (resp.data as List<dynamic>)
            .map((e) => StockModel.fromMap(e))
            .toList();
        log('warehouse stocks from remote --> ${result.toString()}');
        return right(result);
      } else {
        return left(const Failure.serverFailure());
      }
    } on DioError catch (e) {
      log(e.toString());
      if (flag >= 0) {
        await AuthRepoImpl().refresh();
        getWarehouseStocks(warehouseId, flag: flag--);
      }
    }
    throw left(const Failure.cliendFailure());
  }

  // get all items
  @override
  Future<Either<Failure, List<ItemModel>>> getAllItems({flag = 5}) async {
    try {
      final resp = await dio.get(ApiEndpoints.item);
      log('all items -> ${resp.data}');
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = (resp.data as List<dynamic>).map((e) {
          var _categoryName = '';
          getCategory(e['category']).then(
            (value) => value.fold((l) => null, (r) => _categoryName = r.name),
          );
          return ItemModel.fromMap(e).copyWith(categoryName: _categoryName);
        }).toList();

        log('all items from remote --> ${result.toString()}');
        return right(result);
      }
    } on DioError catch (e) {
      log(e.toString());
      if (flag >= 0) {
        await AuthRepoImpl().refresh();
        getAllItems(flag: flag--);
      }
    }
    throw left(const Failure.cliendFailure());
  }

  // getCategory
  @override
  Future<Either<Failure, CategoryModel>> getCategory(int id, {flag = 5}) async {
    try {
      final resp = await dio.get(ApiEndpoints.category + id.toString());
      log('all items -> ${resp.data}');
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = CategoryModel.fromMap(resp.data);
        log('category from remote --> ${result.toString()}');
        return right(result);
      }
    } on DioError catch (e) {
      log(e.toString());
      if (flag >= 0) {
        await AuthRepoImpl().refresh();
        getAllItems(flag: flag--);
      }
    }
    throw left(const Failure.cliendFailure());
  }
}
