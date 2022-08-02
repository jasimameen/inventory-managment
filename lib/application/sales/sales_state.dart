part of 'sales_bloc.dart';

@freezed
class SalesState with _$SalesState {
  const factory SalesState({
    required List<SalesModel> salesList,
    required List<StockModel> stocks,
    required int total,
    required bool isLoading,
    required bool isError,
  }) = _SalesStarted;
  factory SalesState.initial() => const SalesState(
        salesList: [],
        stocks: [],
        total: 0,
        isLoading: false,
        isError: false,
      );
}
