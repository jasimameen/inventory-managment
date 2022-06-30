import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/core/api.dart';
import 'package:invendory_managment/domain/core/api_endpoints.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/shop/i_shop_repo.dart';

@LazySingleton(as: IShopRepo)
class ShopRepoImpl implements IShopRepo {
  Dio dio = Dio();
  @override
  Future<Either<Failure, Map<String, dynamic>>> fetchAllShops() async {
    final responce = await dio.get(ApiEndpoints.shop);
    if (responce.statusCode == 200) {
      return right(responce.data);
    }
    return left(const Failure.cliendFailure());
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getShop(int id) async {
    final responce = await dio.get(ApiEndpoints.shop + id.toString());

    if (responce.statusCode == 200) {
      return right(responce.data);
    }
    return left(const Failure.cliendFailure());
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> registerNewShop(
      Map<String, dynamic> shopData) async {
    final responce = await dio.put(ApiEndpoints.shop, data: shopData);

    if (responce.statusCode == 200) {
      return right(responce.data);
    }
    return left(const Failure.cliendFailure());
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updatePrice(
      {required int shopId,
      required int itemId,
      required double newprice}) async {
    // TODO: implement updatePrice
    throw '';
  }
}
