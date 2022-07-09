import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/models/warehouse.dart';
import '../../domain/warehouse/i_warehouse_repo.dart';

part 'warehouse_event.dart';
part 'warehouse_state.dart';
part 'warehouse_bloc.freezed.dart';

@injectable
class WarehouseBloc extends Bloc<WarehouseEvent, WarehouseState> {
  final IWareHouseRepo _wareHouseRepo;
  WarehouseBloc(this._wareHouseRepo) : super(WarehouseState.initial()) {
    on<_GetAllWarehouses>((event, emit) async {
      // send loding state
      emit(state.copyWith(isLoading: true));

      // get data
      final responce = await _wareHouseRepo.getAllWareHouses();
      
      // fold data
      final _newState = responce.fold(
        (failure) => state.copyWith(isLoading: false, isError: false),
        (result) => state.copyWith(
          warehouseList: result,
          isLoading: false,
          isError: false,
        ),
      );

      //  update state
      emit(_newState);
    });
  }
}
