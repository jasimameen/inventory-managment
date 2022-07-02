import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/auth/i_auth_repo.dart';
import 'package:invendory_managment/domain/models/shop.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/shop/i_shop_repo.dart';
import '../auth/auth_repo_impl.dart'
    show
        ACCESS_TOKEN,
        AuthRepoImpl,
        dio; // get the dio object from authorization repo

@LazySingleton(as: IShopRepo)
class ShopRepoImpl implements IShopRepo {
  @override
  Future<Either<Failure, List<ShopModel>>> fetchAllShops() async {
    try {
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';
      final responce = await dio.get(ApiEndpoints.shop);
      if (responce.statusCode == 200) {
        List<Map<String, dynamic>> resp = jsonDecode(responce.data);
        List<ShopModel> shops =
            resp.map((map) => ShopModel.fromMap(map)).toList();
        log('all shops from remote --> ${shops.toString()}');
        return right(shops);
      }
    } on DioError catch (e) {
      log(e.toString());
      await AuthRepoImpl().refresh();
      fetchAllShops();
    }
    return left(const Failure.cliendFailure());
  }

  @override
  Future<Either<Failure, ShopModel>> getShop(int id) async {
    final responce = await dio.get(ApiEndpoints.shop + id.toString());

    if (responce.statusCode == 200) {
      var shopData = ShopModel.fromJson(jsonDecode(responce.data));
      log('name ----->  ${shopData.name}');
      return right(shopData);
    }
    return left(const Failure.cliendFailure());
  }

  @override
  Future<Either<Failure, ShopModel>> registerNewShop(
      Map<String, dynamic> shopData) async {
    final responce = await dio.put(ApiEndpoints.shop, data: shopData);

    if (responce.statusCode == 200) {
      var shopData = ShopModel.fromJson(responce.data);
      return right(shopData);
    }
    return left(const Failure.cliendFailure());
  }

  @override
  Future<Either<Failure, bool>> updatePrice(
      {required int shopId,
      required int itemId,
      required double newprice}) async {
    // TODO: implement updatePrice
    throw '';
  }
}
