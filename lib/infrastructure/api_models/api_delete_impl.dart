import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/api_models/i_api_delete.dart';
import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IApiDelete)
class ApiPostImpl implements IApiDelete {
  @override
  Future<bool> deleteSale(int id) async {
    try {
      log('$id = id');
      final resp = await dio.delete(
        ApiEndpoints.sales + '$id/',
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          },
        ),
      );
      if (resp.statusCode == 200) {
        log('delete success');
        return true;
      }
      log('false');
      return false;
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
