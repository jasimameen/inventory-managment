import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/stock.dart';
import '../../domain/stock/i_stock_repo.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IStockRepo)
class StockRepoImpl implements IStockRepo {
  // get all the Vehicle Stocks
  @override
  Future<Either<Failure, List<StockModel>>> getVehicleStocks(int id, {flag = 5}) async {
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
      }
    } on DioError catch (e) {
      log(e.toString());
      await AuthRepoImpl().refresh();
      getWarehouseStocks(warehouseId);
    }
    throw left(const Failure.cliendFailure());
  }
}
