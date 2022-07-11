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
      await dio.post(ApiEndpoints.accessTokenPath,
          data: {"username": "qwerty", "password": "qwerty"}).then((response) {
        ACCESS_TOKEN = response.data["access"];
        REFRESH_TOKEN = response.data["refresh"];
      });
    } catch (e) {
      log('[POST]Error in dio sign In -> ' +
          e.toString() +
          '\n --------------\n refreshing access token ....');

      /// if any error occures call the refresh function to get new access Token
      await refresh();
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
      await refresh();
    }
    return retry();
  }

  /// refresh the current accesToken with new accessToken
  int flag = 0; // this flag used to only refresh 5 failed attempts
  @override
  Future<void> refresh() async {
    final oldAToken = ACCESS_TOKEN;
    try {
      log('refresh called');
      final resp = await dio.post(
        ApiEndpoints.refreshTokenPath,
        data: {"refresh": REFRESH_TOKEN},
      );
      ACCESS_TOKEN = resp.data['access'];
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';
    } on DioError catch (e) {
      log('refresh error ' + e.toString());
    }

    // attemp one time
   
    if (oldAToken != ACCESS_TOKEN) {
      log('new accessToken generated');
      var retryStatus = await retry();
      if (retryStatus) {
        flag = 0;
      } 
    } else {
      log('no access token generated');
      if (flag <= 5) {
        refresh();
        flag++;
      }
    }
  }

  /// retry Authize and LogIn
  @override
  Future<bool> retry() async {
    /// retrying after refreshing the token
    try {
      log('Retry called');
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';
      final responce = await dio.get(ApiEndpoints.errand);
      if (responce.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } on DioError catch (e) {
      log('retry error : ${e.toString()})');
    }
    return false;
  }
}
