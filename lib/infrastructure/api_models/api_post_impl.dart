import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/api_models/i_api_post.dart';
import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/sales.dart';
import '../../domain/models/shop.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IApiPost)
class ApiPostImpl implements IApiPost {
  @override
  Future<SalesModel> addSale(SalesModel salesModel) async {
    try {
      final data = salesModel.toMap();
      log('sending data -> $data');

      final resp = await dio.post(ApiEndpoints.sales, data: data);

      log('post resp-> ' + resp.toString());
      return SalesModel.fromMap(resp.data);
    } on DioError catch (error) {
      log(error.toString());
      log('status message ->-> ${error.response?.statusMessage}');
      if ((error.response?.statusCode == 401 &&
          error.response?.data['message'] == "Invalid JWT")) {
        AuthRepoImpl().refresh();
      }
    }
    throw const Failure.serverFailure();
  }

  @override
  Future<ShopModel> registerShop(ShopModel shopModel) async {
    try {
      final data = json.encode(shopModel.toMap());
      log(data.toString());
      final resp = await dio.post(ApiEndpoints.shop, data: data);

      return ShopModel.fromMap(resp.data);
    } on DioError catch (error) {
      log(error.toString());
      log('status message ->-> ${error.response?.statusMessage}');
      if ((error.response?.statusCode == 401 &&
          error.response?.data['message'] == "Invalid JWT")) {
        AuthRepoImpl().refresh();
      }
    }
    throw const Failure.serverFailure();
  }
}
