import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/core/persisted_ids.dart';
import '../../domain/errand/i_errand_repo.dart';
import '../../domain/models/driver.dart';
import '../../domain/models/errand.dart';
import '../../domain/models/vehicle.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IErrandRepo)
class ErrandRepoImpl implements IErrandRepo {
  // get Errent Info
  @override
  Future<Either<Failure, ErrandModel>> getErrentInfo(String errentId) async {
    try {
      final resp = await dio.get(
          ApiEndpoints.errand + 1.toString()); // TODO : get errend with string
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = ErrandModel.fromMap(resp.data);

        // store all the ids
        PersistedIds.errandId = result.errand_id;
        PersistedIds.driverId = 1; // result.driverId
        PersistedIds.routeId = result.route;
        log(PersistedIds.driverId.toString());

        return right(result);
      } else {
        throw left(const Failure.serverFailure());
      }
    } on DioError catch (_) {
      await AuthRepoImpl().refresh();
      getErrentInfo('put the errent Id here');
    }
    throw left(const Failure.cliendFailure());
  }

  // get DriverInfo
  @override
  Future<Either<Failure, DriverModel>> getDriverInfo(int id) async {
    try {
      final resp = await dio.get(ApiEndpoints.driver + id.toString());
      log('driverInfo -> ' + resp.data.toString());
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = DriverModel.fromMap(resp.data);

        // store vehicle id
        PersistedIds.vehicleId = result.vehicle;

        return right(result);
      } else {
        throw left(const Failure.serverFailure());
      }
    } on DioError catch (_) {
      await AuthRepoImpl().refresh();
      final driverId = PersistedIds.driverId;
      getDriverInfo(driverId!);
    }
    throw left(const Failure.cliendFailure());
  }

  // getVehicleInfo
  @override
  Future<Either<Failure, VehicleModel>> getVehicleInfo(int id) async {
    try {
      final resp = await dio.get(ApiEndpoints.vehicle + id.toString());
      log('VehicleInfo -> ' + resp.data.toString());
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = VehicleModel.fromMap(resp.data);
        // store store id
        PersistedIds.vehicleStockId = result.stock.toInt();

        return right(result);
      } else {
        throw left(const Failure.serverFailure());
      }
    } on DioError catch (_) {
      await AuthRepoImpl().refresh();
      getVehicleInfo(PersistedIds.vehicleId!);
    }
    throw left(const Failure.cliendFailure());
  }

  /// initialize all the info in the current errand
  /// mainly used to store the id neccessory for this errand
  @override
  Future<bool> initialiazeErrand() async {
    // if (PersistedIds.errandId != null) {
    await AuthRepoImpl().signInWithErrendId('');
    await getErrentInfo('PersistedIds.errandId!');
    await getDriverInfo(PersistedIds.driverId!);
    await getVehicleInfo(PersistedIds.vehicleId!);
    // }
    return false;
  }
}
