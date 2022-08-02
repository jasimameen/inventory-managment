import 'package:invendory_managment/domain/models/models_exported.dart';

import '../models/sales.dart';

abstract class IApiPut {
  Future<SalesModel> editSale(int saleId, SalesModel salesModel);
  Future<RouteModel> addShopToRoute(int routeId, int shopId);
}
