import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/core/persisted_data.dart';
import '../../domain/models/route.dart';
import '../../domain/models/town.dart';
import '../../domain/route/i_route_repo.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IRouteRepo)
class RouteRepoImpl implements IRouteRepo {
  @override
  Future<Either<Failure, RouteModel>> getRouteInfo(
      {int flag = 5}) async {
    try {
      final resp = await dio.get(ApiEndpoints.route + id.toString());
      log('routeInfo -> ' + resp.data.toString());
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final result = RouteModel.fromMap(resp.data);
        log('routeModel -> ' + result.toString());
        PersistedData.routeModel = result;

        // store vehicle id
        PersistedData.routeModel = result;

        return right(result);
      } else {
        throw left(const Failure.serverFailure());
      }
    } on DioError catch (_) {
      if (flag >= 0) {
        await AuthRepoImpl().refresh();
        getRouteInfo(flag: flag--);
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
        
        PersistedData.townModels = result;

        log('all towns from remote --> ${result.toString()}');
        return right(result);
      }
    } on DioError catch (_) {
      if (flag >= 0) {
        await AuthRepoImpl().refresh();
        getTowns(flag: flag--);
      }
    }
    throw left(const Failure.serverFailure());
  }
  // get town
   @override
  Future<Either<Failure, TownModel>> getTown(int id,{flag = 5}) async {
    try {
      final responce = await dio.get(ApiEndpoints.town + id.toString());
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = TownModel.fromMap(responce.data);
        log('all towns from remote --> ${result.toString()}');
        return right(result);
      }
    } on DioError catch (_) {
      if (flag >= 0) {
        await AuthRepoImpl().refresh();
        getTowns(flag: flag--);
      }
    }
    throw left(const Failure.serverFailure());
  }
}
