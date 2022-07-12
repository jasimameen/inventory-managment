import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/models/sales.dart';
import '../../domain/models/town.dart';
import '../route/route_repo_impl.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/shop.dart';
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
        final shopsList = (responce.data as List<dynamic>).map((e) {
          TownModel? townModel;
          RouteRepoImpl().getTown(e['town']).then((value) => value.fold(
                (l) => null,
                (result) => townModel = result,
              ));
          return ShopModel.fromMap(e).copyWith(townModel: townModel);
        }).toList();

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
      RouteRepoImpl().getTown(shopData.town).then((value) => value.fold(
          (l) => null, (result) => shopData.copyWith(townModel: result)));

      return right(shopData);
    }
    throw left(const Failure.serverFailure());
  }

  @override
  Future<Either<Failure, ShopModel>> registerNewShop(
      Map<String, dynamic> shopData) async {
    try {
      final responce = await dio.post(ApiEndpoints.shop, data: shopData);
      responce.data['id'] = responce.data['shop_id'];
      log(responce.data);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final shop = ShopModel.fromMap(responce.data);
        log('registed shop => ' + shop.toString());
        return right(shop);
      }
    } on DioError catch (_) {}
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

  @override
  Future<Either<Failure, List<SalesModel>>> getAllSales(String shopId) async {
    try {
      log('started');
      dio.options.headers['Authorization'] = 'Bearer $ACCESS_TOKEN';

      final responce = await dio.get(ApiEndpoints.sales);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final respList = (responce.data as List<dynamic>)
            .map((e) => SalesModel.fromMap(e))
            .toList();
        List<SalesModel> result = [];
        for (var element in respList) {
          if (element.shop == shopId) {
            result.add(element);
          }
        }
        return right(result);
      }
    } on DioError catch (e) {
      log(e.toString());
      await AuthRepoImpl().refresh();
      fetchAllShops();
    }
    throw left(const Failure.serverFailure());
  }
}
