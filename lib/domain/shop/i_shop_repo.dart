import 'package:dartz/dartz.dart';
import 'package:invendory_managment/domain/core/failure.dart';

abstract class IShopRepo {
  Future<Either<Failure, Map<String, dynamic>>> fetchAllShops();
  Future<Either<Failure, Map<String, dynamic>>> getShop(int id);
  Future<Either<Failure, Map<String, dynamic>>> registerNewShop(
      Map<String, dynamic> shopData);
  Future<Either<Failure, Map<String, dynamic>>> updatePrice({
    required int shopId,
    required int itemId,
    required double newprice,
  });
}
