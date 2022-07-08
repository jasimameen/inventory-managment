import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/core/persisted_ids.dart';
import 'package:invendory_managment/domain/models/item.dart';
import 'package:invendory_managment/domain/models/stock.dart';
import 'package:invendory_managment/domain/stock/i_stock_repo.dart';

part 'stock_event.dart';
part 'stock_state.dart';
part 'stock_bloc.freezed.dart';

@injectable
class StockBloc extends Bloc<StockEvent, StockState> {
  final IStockRepo _stockRepo;
  StockBloc(this._stockRepo) : super(StockState.initial()) {
    on<_GetVehicleStocks>((event, emit) async {
      // send loading state
      emit(state.copyWith(isLoading: true));

      // get Data
      // final items = await 
      final resp = await _stockRepo.getVehicleStocks(PersistedIds.vehicleId!);
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
      final resp = await _stockRepo.getWarehouseStocks(PersistedIds.vehicleId!);
      final _newState = resp.fold(
        (l) => state.copyWith(isLoading: false, isError: true),
        (result) => state.copyWith(isLoading: false, stocks: result),
      );

      // update ui
      emit(_newState);
    });
  }
}
