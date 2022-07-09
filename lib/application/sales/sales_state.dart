part of 'sales_bloc.dart';

@freezed
class SalesState with _$SalesState {
  const factory SalesState({
    required List<SalesModel> salesList,
    required bool isLoading,
    required bool isError,
  }) = _SalesStarted;
  factory SalesState.initial() => const SalesState(
        salesList: [],
        isLoading: false,
        isError: false,
      );
}
