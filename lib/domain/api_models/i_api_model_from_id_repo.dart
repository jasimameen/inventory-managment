import '../models/models_exported.dart';

abstract class IApiModelFromIdRepo {
  Future<DistrictModel> getDistrict(int id);
  Future<CategoryModel> getCategorie(int id);
  Future<TownModel> getTown(int id);
  Future<WarehouseModel> getWarehouse(int id);
  Future<SalesModel> getSale(int id);
  Future<VehicleModel> getVehicle(int id);
  Future<ErrandModel> getErrand(int id);
  Future<ShopModel> getShop(int id);
  Future<StockModel> getStock(int id);
  Future<ItemModel> getItem(int id);
  Future<RouteModel> getRoute(int id);
  Future<DriverModel> getDriver(int id);
}
