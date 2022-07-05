part of 'vehicle_bloc.dart';

@freezed
class VehicleState with _$VehicleState {
  const factory VehicleState({
    required VehicleModel vehicleInfo,
    required bool isLoading,
    required bool isError,
  }) = _started;

  factory VehicleState.initial() => VehicleState(
      vehicleInfo: VehicleModel.fromJson('{}'),
      isLoading: false,
      isError: false);
}
