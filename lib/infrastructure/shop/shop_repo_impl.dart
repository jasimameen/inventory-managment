import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_repo.dart';
import '../../domain/models/shop.dart';

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
      log('started');
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';

      final responce = await dio.get(ApiEndpoints.shop);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
      final shopsList = (responce.data as List<dynamic>)
          .map((e) => ShopModel.fromMap(e))
          .toList();
      log('all shops from remote --> ${shopsList.toString()}');
        return right(shopsList);
      }
    } on DioError catch (e) {
      log(e.toString());
      await AuthRepoImpl().refresh();
      fetchAllShops();
    }
    throw left(const Failure.serverFailure());
  }

  @override
  Future<Either<Failure, ShopModel>> getShop(int id) async {
    final responce = await dio.get(ApiEndpoints.shop + id.toString());

    if (responce.statusCode == 200) {
      var shopData = ShopModel.fromJson(jsonDecode(responce.data));
      log('name ----->  ${shopData.name}');
      return right(shopData);
    }
    throw left(const Failure.serverFailure());
  }

  @override
  Future<Either<Failure, ShopModel>> registerNewShop(
      Map<String, dynamic> shopData) async {
    final responce = await dio.put(ApiEndpoints.shop, data: shopData);
    log(responce.data);

    if (responce.statusCode == 200 || responce.statusCode == 201) {
      var shopData = ShopModel.fromJson(responce.data);
      return right(shopData);
    }
    throw left(const Failure.serverFailure());
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
