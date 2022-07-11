



import '../models/models_exported.dart';

abstract class IApiModelsRepo {
  Future<List<DistrictModel>> getDistricts();
  Future<List<CategoryModel>> getCategories();
  Future<List<TownModel>> getTowns();
  Future<List<WarehouseModel>> getWarehouses();
  Future<List<SalesModel>> getSales();
  Future<List<VehicleModel>> getVehicles();
  Future<List<ErrandModel>> getErrands();
  Future<List<ShopModel>> getShops();
  Future<List<StockModel>> getStocks();
  Future<List<ItemModel>> getItems();
  Future<List<RouteModel>> getRoutes();
  Future<List<DriverModel>> getDrivers();
}
