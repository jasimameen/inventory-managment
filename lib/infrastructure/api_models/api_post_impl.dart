import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/core/api_endpoints.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:invendory_managment/infrastructure/auth/auth_repo_impl.dart';
import '../../domain/api_models/i_api_post.dart';
import '../../domain/models/sales.dart';

@Injectable(as: IApiPost)
class ApiPostImpl implements IApiPost {
  @override
  Future<bool> addSale(SalesModel salesModel) async {
    try {
      final data = salesModel.toJson();
      debugPrint('sending data -> $data'); // print debug result
      final resp = await dio.post(ApiEndpoints.sales, data: json.encode(data));
      debugPrint(resp.toString());
      return true;
    } on DioError catch (error) {
      debugPrint(error.toString());
      if ((error.response?.statusCode == 401 &&
          error.response?.data['message'] == "Invalid JWT")) {
        AuthRepoImpl().refresh();
      }
    }
    return false;
  }
}
