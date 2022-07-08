part of 'stock_bloc.dart';

@freezed
class StockEvent with _$StockEvent {
  const factory StockEvent.getVehicleStocks() = _GetVehicleStocks;
  const factory StockEvent.getWarehouseStock() = _GetWarehouseStock;
  
  
}