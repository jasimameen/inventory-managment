import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/core/persisted_ids.dart';

import '../../domain/errand/i_errand_repo.dart';
import '../../domain/models/driver.dart';
import '../../domain/models/errand.dart';
import '../../domain/models/route.dart';
import '../../domain/models/vehicle.dart';

part 'errand_bloc.freezed.dart';
part 'errand_event.dart';
part 'errand_state.dart';

@injectable
class ErrandBloc extends Bloc<ErrandEvent, ErrandState> {
  final IErrandRepo _vehicleRepo;
  ErrandBloc(this._vehicleRepo) : super(ErrandState.initial()) {
    // get ErrendInfo
    on<_GetErrandInfo>((event, emit)async {
       // send loading state
      emit(state.copyWith(isLoading: true));
      // fetch data from repository
      final resp = await _vehicleRepo
          .getErrentInfo(PersistedIds.errandId!); 
      // fold the data
      final _newState = resp.fold(
        (failure) => state.copyWith(isError: true, isLoading: false),
        (result) => state.copyWith(
          errandInfo: result,
          isLoading: false,
          isError: false,
        ),
      );

      // update new state to ui
      emit(_newState);
    });

    // get Vehicle Info
    on<_GetVehicleInfo>((event, emit) async {
      
      // fetch data from repository
      final resp = await _vehicleRepo
          .getVehicleInfo(PersistedIds.vehicleId!); 
      // fold the data
      final _newState = resp.fold(
        (failure) => state.copyWith(isError: true, isLoading: false),
        (result) => state.copyWith(
          vehicleInfo: result,
          isLoading: false,
          isError: false,
        ),
      );

      // update new state to ui
      emit(_newState);
    });

    // get driver Info
    on<_GetDriverInfo>((event, emit) async {
      
      // fetch data from repository
      final resp = await _vehicleRepo
          .getDriverInfo(PersistedIds.driverId!); 
      // fold the data
      final _newState = resp.fold(
        (failure) => state.copyWith(isError: true, isLoading: false),
        (result) => state.copyWith(
          driverInfo: result,
          isLoading: false,
          isError: false,
        ),
      );

      // update new state to ui
      emit(_newState);
    });
  }
}
