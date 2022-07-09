import 'dart:developer';

import 'package:injectable/injectable.dart';

import '../../domain/api_models/i_api_models_repo.dart';
import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/models_exported.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IApiModelsRepo)
class ApiModelsRepoImpl implements IApiModelsRepo {
  @override
  Future<List<CategoryModel>> getCategories({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.category);
      final result = (resp.data as List<dynamic>)
          .map<CategoryModel>((e) => CategoryModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getCategories(flag: flag++);
      }

      log('[getCategories Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<DistrictModel>> getDistricts({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.district);
      final result = (resp.data as List<dynamic>)
          .map<DistrictModel>((e) => DistrictModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getDistricts(flag: flag++);
      } 
      log('[getDistricts Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<DriverModel>> getDrivers({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.driver);
      final result = (resp.data as List<dynamic>)
          .map<DriverModel>((e) => DriverModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getDrivers(flag: flag++);
      }

      log('[getDrivers Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<ErrandModel>> getErrands({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.errand);
      final result = (resp.data as List<dynamic>)
          .map<ErrandModel>((e) => ErrandModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getErrands(flag: flag++);
      }

      log('[getErrands Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<ItemModel>> getItems({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.item);
      final result = (resp.data as List<dynamic>)
          .map<ItemModel>((e) => ItemModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getItems(flag: flag++);
      }

      log('[getItems Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<RouteModel>> getRoutes({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.route);
      final result = (resp.data as List<dynamic>)
          .map<RouteModel>((e) => RouteModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getRoutes(flag: flag++);
      }

      log('[getRoutes Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<SalesModel>> getSales({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.sales);
      final result = (resp.data as List<dynamic>)
          .map<SalesModel>((e) => SalesModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getSales(flag: flag++);
      }

      log('[getSales Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<ShopModel>> getShops({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.shop);
      final result = (resp.data as List<dynamic>)
          .map<ShopModel>((e) => ShopModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getShops(flag: flag++);
      }

      log('[getShops Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<StockModel>> getStocks({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.stock);
      final result = (resp.data as List<dynamic>)
          .map<StockModel>((e) => StockModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getStocks(flag: flag++);
      }

      log('[getStocks Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<TownModel>> getTowns({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.town);
      final result = (resp.data as List<dynamic>)
          .map<TownModel>((e) => TownModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getTowns(flag: flag++);
      }

      log('[getTowns Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<VehicleModel>> getVehicles({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.vehicle);
      final result = (resp.data as List<dynamic>)
          .map<VehicleModel>((e) => VehicleModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getVehicles(flag: flag++);
      }

      log('[getVehicles Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<WarehouseModel>> getWarehouses({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.warehouse);
      final result = (resp.data as List<dynamic>)
          .map<WarehouseModel>((e) => WarehouseModel.fromJson(e))
          .toList();
      return result;
    } catch (e) {
      if (flag <= 5) {
        await AuthRepoImpl().refresh();
        return getWarehouses(flag: flag++);
      }

      log('[getWarehouses Error -> ]' + e.toString());
      throw const Failure.serverFailure();
    }
  }
}
