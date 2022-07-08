import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/core/persisted_ids.dart';
import 'package:invendory_managment/domain/models/route.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/models/town.dart';
import 'package:invendory_managment/domain/route/i_route_repo.dart';
import 'package:invendory_managment/infrastructure/auth/auth_repo_impl.dart';

import '../../domain/core/api_endpoints.dart';

@Injectable(as: IRouteRepo)
class RouteRepoImpl implements IRouteRepo {
  @override
  Future<Either<Failure, RouteModel>> getRouteInfo({int flag = 5}) async {
    final routeId = PersistedIds.routeId ?? 0;

    try {
      final resp = await dio.get(ApiEndpoints.route + routeId.toString());
      log('routeInfo -> ' + resp.data.toString());
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = RouteModel.fromMap(resp.data);
        log('routeModel -> ' + result.toString());

        // store vehicle id
        // PersistedIds.vehicleId = result.vehicle;

        return right(result);
      } else {
        throw left(const Failure.serverFailure());
      }
    } on DioError catch (_) {
      if (flag >= 0) {
        flag--;
        await AuthRepoImpl().refresh();
        getRouteInfo();
      } else {
        left(const Failure.serverFailure());
      }
    }

    throw left(const Failure.cliendFailure());
  }

  // get all towns
  @override
  Future<Either<Failure, List<TownModel>>> getTowns({flag = 5}) async {
    try {
      final responce = await dio.get(ApiEndpoints.town);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = (responce.data as List<dynamic>)
            .map((e) => TownModel.fromMap(e))
            .toList();
        log('all towns from remote --> ${result.toString()}');
        return right(result);
      }
    } on DioError catch (_) {
      if (flag >= 0) {
        flag--;
      await AuthRepoImpl().refresh();
      getTowns();
      }
    }
    throw left(const Failure.serverFailure());
  }
}
