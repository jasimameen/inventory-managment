part of 'sales_bloc.dart';

@freezed
class SalesEvent with _$SalesEvent {
  const factory SalesEvent.getAllSales() = _GetAllSales;
  const factory SalesEvent.getAllSalesByShopId(String shopId) = _GetAllSalesByShopId;
  const factory SalesEvent.addNewSale(String shopId) = _AddNewSale;
  const factory SalesEvent.deleteSale(String saleId,String shopId) = _DeleteSale;
  const factory SalesEvent.updateSalePrice(String saleId, double newPrice) = _UpdateSale;
}