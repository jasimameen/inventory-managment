import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/models/vehicle.dart';
import 'package:invendory_managment/domain/vehicle/i_vehicle_repo.dart';

import '../../domain/core/failure.dart';

part 'vehicle_event.dart';
part 'vehicle_state.dart';
part 'vehicle_bloc.freezed.dart';

@injectable
class VehicleBloc extends Bloc<VehicleEvent, VehicleState> {
  IVehicleRepo _vehicleRepo;
  VehicleBloc(this._vehicleRepo) : super(VehicleState.initial()) {
    on<_GetVehicleInfo>((event, emit) async {
      // send loading state
      emit(state.copyWith(isLoading: true));
      // fetch data from repository
      final resp = await _vehicleRepo.getVehicleInfo();
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
  }
}
