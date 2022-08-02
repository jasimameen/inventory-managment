import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import '../models/sales.dart';
import '../models/shop.dart';

abstract class IShopRepo {
  Future<Either<Failure, List<ShopModel>>> fetchAllShops();
  Future<Either<Failure, ShopModel>> getShop(int id);
  Future<Either<Failure, List<SalesModel>>> getAllSales(String shopId);
  Future<Either<Failure, ShopModel>> registerNewShop(
      Map<String, dynamic> shopData);
  Future<Either<Failure, bool>> updatePrice({
    required int shopId,
    required int itemId,
    required double newprice,
  });
}
