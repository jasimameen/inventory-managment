import '../models/models_exported.dart';

abstract class IApiPost {
  Future<SalesModel> addSale(SalesModel salesModel);
  Future<ShopModel> registerShop(ShopModel shopModel);
}
