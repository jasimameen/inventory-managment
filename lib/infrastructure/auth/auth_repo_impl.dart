// ignore_for_file: non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/auth/i_auth_repo.dart';
import 'package:invendory_managment/domain/core/api_endpoints.dart';

Dio dio = Dio();

var ACCESS_TOKEN = '';
var REFRESH_TOKEN = '';

@LazySingleton(as: IAuthRepo)
class AuthRepoImpl implements IAuthRepo {
  @override
  Future<bool> signInWithErrendId(String errendId) async {
    try {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';
      dio.post(ApiEndpoints.accessTokenPath,
          data: {"username": "qwerty", "password": "qwerty"}).then((response) {
        ACCESS_TOKEN = response.data["access"];
        REFRESH_TOKEN = response.data["refresh"];
      });
    } catch (e) {
      log('Error in dio post regust -> ' + e.toString());

      /// if any error occures call the refresh function to get new access Token
      refresh();
    }

    try {
      // try with the access token already available
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';
      final resp = await dio.get(ApiEndpoints.errand);
      if (resp.statusCode == 200) {
        return true;
      }
    } catch (e) {
      log('[GET]error happendd in dio -> ' + e.toString());

      /// when it fails to authorize with accesToken
      /// use refreshToken to get the new accesToken
      /// call -> refresh() and retry
      refresh();
    }
    return retry();
  }

  /// refresh the current accesToken with new accessToken
  Future<void> refresh() async {
    final oldAToken = ACCESS_TOKEN;
    try {
      log('refresh called');
      final resp = await dio.post(
        ApiEndpoints.refreshTokenPath,
        data: {"refresh": REFRESH_TOKEN},
      );

      log('refresh resonce -> ${resp.data}');
      ACCESS_TOKEN = resp.data['access'];
    } on DioError catch (e) {
      log('refresh error ' + e.toString());
    }

    // attemp one time
    oldAToken == ACCESS_TOKEN
        ? log('access token not changed')
        : log('acces token changed');
    if (oldAToken != ACCESS_TOKEN) {
      log('Access Token Modified Successfully');
      retry();
    } else {
      log('access token not changed calling refresh');
      refresh();
      log('refreash again');
    }
  }

  /// retry Authize and LogIn
  Future<bool> retry() async {
    /// retrying after refreshing the token
    try {
      log('Retry called');
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';
      final responce = await dio.get(ApiEndpoints.errand);
      log('Retry status code = ' + responce.statusCode.toString());
      log('errand -> ${responce.data}');

      if (responce.statusCode == 200) {
        return true;
      }
    } on DioError catch (e) {
      log('retry error : ${e.toString()})');
    }
    return false;
  }
}
