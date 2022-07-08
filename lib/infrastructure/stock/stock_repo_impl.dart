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
  Future<Either<Failure, List<StockModel>>> getVehicleStocks(int id) async {
    try {
      final resp = await dio.get(ApiEndpoints.stock);
      log('vehicle stocks -> ${resp.data}');
    } on DioError catch (_) {
      await AuthRepoImpl().refresh();
      getVehicleStocks(id);
    }

    throw const Failure.cliendFailure();
  }

  /// getWarehousStocks
  @override
  Future<Either<Failure, List<StockModel>>> getWarehouseStocks(
      int warehouseId) async {
    try {
      final resp = await dio.get(ApiEndpoints.warehouse);
      log('warehouse stocks -> ${resp.data}');
    } on DioError catch (_) {
      await AuthRepoImpl().refresh();
      getWarehouseStocks(warehouseId);
    }

    throw const Failure.cliendFailure();
  }
}
