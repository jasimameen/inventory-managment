import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/persisted_data.dart';
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
    on<_GetErrandInfo>((event, emit) async {
      // return if data is already loaded
      if (state.errandInfo.id != -1) {
        emit(state);
        return;
      }
      // send loading state
      emit(state.copyWith(isLoading: true));
      // fetch data from repository
      final resp = await _vehicleRepo.getErrentInfo(PersistedData.errandId!);
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
      // return if data is already loaded
      if (state.vehicleInfo.id != -1) {
        emit(state);
        return;
      }

      // fetch data from repository
      final resp = await _vehicleRepo.getVehicleInfo(PersistedData.vehicleId!);
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
      // return if data is already loaded
      if (state.driverInfo.id != -1) {
        emit(state);
        return;
      }

      // fetch data from repository
      final resp = await _vehicleRepo.getDriverInfo(PersistedData.driverId!);
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
