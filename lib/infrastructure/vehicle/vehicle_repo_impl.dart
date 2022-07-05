import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/auth/i_auth_repo.dart';
import 'package:invendory_managment/domain/core/api_endpoints.dart';
import 'package:invendory_managment/domain/models/vehicle.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/vehicle/i_vehicle_repo.dart';
import 'package:invendory_managment/infrastructure/auth/auth_repo_impl.dart';

@Injectable(as: IVehicleRepo)
class VehicleRepoImpl implements IVehicleRepo {
  @override
  Future<Either<Failure, VehicleModel>> getVehicleInfo() async {
    try {
      final resp = await dio.get(ApiEndpoints.vehicle);
      log(resp.data.toString());
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        // final result = VehicleModel.fromJson(json.decode(resp.data));
        final vehicleModels = (resp.data as List<dynamic>)
            .map((json) => VehicleModel.fromJson(json))
            .toList();
            
        return right(vehicleModels.first);
      } else {
        throw left(const Failure.serverFailure());
      }
    } on DioError catch (_) {
      await AuthRepoImpl().refresh();
      getVehicleInfo();
    }
    throw left(const Failure.cliendFailure());
  }
}
