import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:invendory_managment/domain/models/shop.dart';

abstract class IShopRepo {
  Future<Either<Failure, List<ShopModel>>> fetchAllShops();
  Future<Either<Failure, ShopModel>> getShop(int id);
  Future<Either<Failure, ShopModel>> registerNewShop(
      Map<String, dynamic> shopData);
  Future<Either<Failure, bool>> updatePrice({
    required int shopId,
    required int itemId,
    required double newprice,
  });
}
