part of 'warehouse_bloc.dart';

@freezed
class WarehouseState with _$WarehouseState {
  factory WarehouseState({
    required List<WareHouseModel> warehouseList,
    required bool isLoading,
    required bool isError,
  }) = _InitialState;
  factory WarehouseState.initial() => WarehouseState(
        warehouseList: [],
        isLoading: false,
        isError: false,
      );
}
