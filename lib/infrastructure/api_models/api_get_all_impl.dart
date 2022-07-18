import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:collection/collection.dart';

import '../../domain/api_models/i_api_get_all.dart';
import '../../domain/core/api_endpoints.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/models_exported.dart';
import '../auth/auth_repo_impl.dart';

@Injectable(as: IApiGetAll)
class ApiGetAllImpl implements IApiGetAll {
  @override
  Future<List<CategoryModel>> getCategories({int flag = 0}) async {
    try {
      final resp = await dio.get(ApiEndpoints.category);
      final result = (resp.data as List<dynamic>)
          .map<CategoryModel>((e) => CategoryModel.fromMap(e))
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
          .map<DistrictModel>((e) => DistrictModel.fromMap(e))
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
          .map<DriverModel>((e) => DriverModel.fromMap(e))
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
          .map<ErrandModel>((e) => ErrandModel.fromMap(e))
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
          .map<ItemModel>((e) => ItemModel.fromMap(e))
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
          .map<RouteModel>((e) => RouteModel.fromMap(e))
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
          .map<SalesModel>((e) => SalesModel.fromMap(e))
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
      final towns = await getTowns();

      final result = (resp.data as List<dynamic>).map<ShopModel>((e) {
        final townName =
            towns.firstWhereOrNull((element) => element.id == e['town'])?.name ??
                '';
        return ShopModel.fromMap(e).copyWith(townName: townName);
      }).toList();

      log('getShops -> ' + result.toString());
      return result;
    } catch (e) {
      if (flag <= 5) {
        log('[getShops Error -> ]' + e.toString());
        log('retry attempt ' + flag.toString());
        await AuthRepoImpl().refresh();
        getShops(flag: flag + 1);
      }

      throw const Failure.serverFailure();
    }
  }

  @override
  Future<List<StockModel>> getStocks({int flag = 0}) async {
    try {
      //
      final resp = await dio.get(ApiEndpoints.stock);
      final items = await getItems();
      final warehouses = await getWarehouses();

      //
      final result = (resp.data as List<dynamic>).map<StockModel>((e) {
        //
        final warehouseName = warehouses
            .firstWhere((element) => element.id == e['warehouse'],
                orElse: () => WarehouseModel.fromMap({}))
            .name;
        final itemName = items
            .firstWhere((element) => element.id == e['item'],
                orElse: () => ItemModel.fromMap({}))
            .name;

        //
        return StockModel.fromMap(e)
            .copyWith(warehouseName: warehouseName, itemName: itemName);
      }).toList();
      log('getStocks -> ' + result.toString());
      return result;
    } on DioError catch (e) {
      if ((e.response?.statusCode == 401 &&
          e.response?.data['message'] == "Invalid JWT")) {
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
      final districts = await getDistricts();

      final result = (resp.data as List<dynamic>).map<TownModel>((e) {
        final dIndex =
            districts.indexWhere((element) => element.id == e['district']);
        return TownModel.fromMap(e)
            .copyWith(districtName: districts[dIndex].name);
      }).toList();

      log('get towns -> ' + result.toString());
      return result;
    } on DioError catch (e) {
      if (e.response?.statusCode == 401 ||
          e.response?.data['message'] == "Token is invalid or expired") {
        log(e.toString());
        await AuthRepoImpl().refresh();
        getTowns();
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
          .map<VehicleModel>((e) => VehicleModel.fromMap(e))
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
          .map<WarehouseModel>((e) => WarehouseModel.fromMap(e))
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
