import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/warehouse.dart';
import '../../domain/warehouse/i_warehouse_repo.dart';
import '../auth/auth_repo_impl.dart'
    show
        ACCESS_TOKEN,
        AuthRepoImpl,
        dio; // get the dio object from authorization repo

@LazySingleton(as: IWareHouseRepo)
class ShopRepoImpl implements IWareHouseRepo {
  @override
  Future<Either<Failure, List<WarehouseModel>>> getAllWareHouses() async {
    try {
      log('started');
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';

      final responce = await dio.get(ApiEndpoints.warehouse);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final warehousesList = (responce.data as List<dynamic>)
            .map((e) => WarehouseModel.fromMap(e))
            .toList();
        log('all shops from remote --> ${warehousesList.toString()}');
        return right(warehousesList);
      }
    } on DioError catch (e) {
      log(e.toString());
      await AuthRepoImpl().refresh();
      getAllWareHouses();
    }
    throw left(const Failure.serverFailure());
  }
}
