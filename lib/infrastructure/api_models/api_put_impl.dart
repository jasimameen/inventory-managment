import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/models/route.dart';

import '../../domain/api_models/i_api_put.dart';
import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/core/persisted_data.dart';
import '../../domain/models/sales.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IApiPut)
class ApiPutImpl implements IApiPut {
  @override
  Future<SalesModel> editSale(int saleId, SalesModel salesModel) async {
    try {
      final data = salesModel.toMap();
      final resp =
          await dio.put(ApiEndpoints.sales + saleId.toString(), data: data);

      return SalesModel.fromMap(resp.data);
    } on DioError catch (e) {
      if ((e.response?.statusCode == 401 &&
          e.response?.data['message'] == "Invalid JWT")) {
        log('[Error] in editSale method -> ' + e.toString());
        await AuthRepoImpl().signInWithErrendId(PersistedData.errandId ?? '');
        editSale(saleId, salesModel);
      }
    }
    throw const Failure.cliendFailure();
  }

  @override
  Future<RouteModel> addShopToRoute(int routeId, int shopId) async{
    try {
      final resp =
          await dio.put(ApiEndpoints.route + routeId.toString() +'/shops', data: json.encode('$shopId'));

      return RouteModel.fromMap(resp.data);
    } on DioError catch (e) {
      if ((e.response?.statusCode == 401 &&
          e.response?.data['message'] == "Invalid JWT")) {
        log('[Error] in addShopToRoute method -> ' + e.toString());
        await AuthRepoImpl().signInWithErrendId(PersistedData.errandId ?? '');
        addShopToRoute(shopId, shopId);
      }
    }
    throw const Failure.cliendFailure();
  }

  
}
