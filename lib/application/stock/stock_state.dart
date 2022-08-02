part of 'stock_bloc.dart';

@freezed
class StockState with _$StockState {
  const factory StockState({
    required List<StockModel> stocks,
    required List<StockModel> warehouseStocks,
    required List<ItemModel> items,
    required bool isLoading,
    required bool isError,
  }) = _StockStarted;

  factory StockState.initial() =>const StockState(
        stocks: [],
        warehouseStocks: [],
        items: [],
        isLoading: false,
        isError: false,
      );
}
