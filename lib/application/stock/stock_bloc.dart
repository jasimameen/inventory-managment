import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/api_models/i_api_get_all.dart';

import '../../domain/core/persisted_data.dart';
import '../../domain/models/item.dart';
import '../../domain/models/stock.dart';
import '../../domain/stock/i_stock_repo.dart';

part 'stock_bloc.freezed.dart';
part 'stock_event.dart';
part 'stock_state.dart';

@injectable
class StockBloc extends Bloc<StockEvent, StockState> {
  final IStockRepo _stockRepo;
  final IApiGetAll _apiGetAll;
  StockBloc(this._stockRepo, this._apiGetAll) : super(StockState.initial()) {
    on<_GetVehicleStocks>((event, emit) async {
      // send loading state
      emit(state.copyWith(isLoading: true));

      // get Data
      // final items = await
      final resp = await _stockRepo.getVehicleStocks(PersistedData.vehicleId!);
      final _newState = resp.fold(
        (l) => state.copyWith(isLoading: false, isError: true),
        (result) => state.copyWith(isLoading: false, stocks: result),
      );

      // update ui
      emit(_newState);
    });

    on<_GetWarehouseStock>((event, emit) async {
      // send loading state
      emit(state.copyWith(isLoading: true));

      // get Data
      final stocks = await _apiGetAll.getStocks();
      final result = stocks.where((stock) => stock.warehouse == event.warehouseId).toList();
      final _newState = state.copyWith(
        isLoading: false,
        isError: false,
        warehouseStocks: result,
      );

      // update ui
      emit(_newState);
    });
  }
}
