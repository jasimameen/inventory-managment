import 'dart:developer';

import 'package:injectable/injectable.dart';

import '../../domain/api_models/i_api_model_from_id_repo.dart';
import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/models_exported.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IApiModelFromIdRepo)
class ApiModelFromIdRepoImpl implements IApiModelFromIdRepo {
  @override
  Future<DistrictModel> getDistrict(int id, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.district + id.toString());
      final result = DistrictModel.fromMap(resp.data);
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getDistrict(id, flag: flag++);
      }

      log('[getDistrict Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<CategoryModel> getCategorie(int id, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.category + id.toString());
      final result = CategoryModel.fromMap(resp.data);
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getCategorie(id, flag: flag++);
      }

      log('[getCategories Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<DriverModel> getDriver(int id, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.driver + id.toString());
      final result = DriverModel.fromMap(resp.data);
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getDriver(id, flag: flag++);
      }

      log('[getDriver Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<ErrandModel> getErrand(int id, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.errand + id.toString());
      final result = ErrandModel.fromMap(resp.data);
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getErrand(id, flag: flag++);
      }

      log('[getErrand Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<ItemModel> getItem(int id, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.item + id.toString());
      final result = ItemModel.fromMap(resp.data);
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getItem(id, flag: flag++);
      }

      log('[getItem Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<RouteModel> getRoute(int id, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.route + id.toString());
      final result = RouteModel.fromMap(resp.data);
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getRoute(id, flag: flag++);
      }

      log('[getRoute Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<SalesModel>> getSales(String shopId, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.sales);
      final result = (resp.data as List<dynamic>)
          .map((e) => SalesModel.fromMap(e))
          .toList();
      return result.where((element) => element.shop == shopId).toList();
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getSales(shopId, flag: flag++);
      }

      log('[getSale Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<ShopModel> getShop(String shopId, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.shop);
      var result = (resp.data as List<dynamic>)
          .map((e) => ShopModel.fromMap(e))
          .firstWhere(
            (element) => element.shop_id == shopId,
            orElse: () => ShopModel(
              name: 'null',
              shop_id: 'null',
              contact_number: 0,
              email: 'null',
              town: -1,
              id: -1,
            ),
          );

        return result;
      
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getShop(shopId, flag: flag++);
      }

      log('[getShop Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<StockModel> getStock(int id, {flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.stock + id.toString());
      final result = StockModel.fromMap(resp.data);
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getStock(id, flag: flag++);
      }

      log('[getStock Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<TownModel> getTown(int id) async {
    try {
      final resp = await dio.get(ApiEndpoints.town + id.toString());
      final result = TownModel.fromMap(resp.data);
      return result;
    } catch (e) {
      log('[getTown Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<VehicleModel> getVehicle(int id) async {
    try {
      final resp = await dio.get(ApiEndpoints.vehicle + id.toString());
      final result = VehicleModel.fromMap(resp.data);
      return result;
    } catch (e) {
      log('[getVehicle Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<WarehouseModel> getWarehouse(int id) async {
    try {
      final resp = await dio.get(ApiEndpoints.warehouse + id.toString());
      final result = WarehouseModel.fromMap(resp.data);
      return result;
    } catch (e) {
      log('[getWarehouse Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }
}
