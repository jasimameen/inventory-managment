part of 'errand_bloc.dart';

@freezed
class ErrandState with _$ErrandState {
  const factory ErrandState({
    required ErrandModel errandInfo,
    required VehicleModel vehicleInfo,
    required DriverModel driverInfo,
    required RouteModel routeInfo,
    required bool isLoading,
    required bool isError,
  }) = _started;

  factory ErrandState.initial() => ErrandState(
        errandInfo: ErrandModel(id: -1, driver: -1, errand_id: '', route: -1),
        vehicleInfo:
            VehicleModel(id: -1, vehicle_number: '', vehicle_type: '', stock: -1),
        driverInfo:
            DriverModel(id: -1, name: '', contact: 0, vehicle: -1),
        routeInfo:
            RouteModel(id: -1, name: '', route_id: '', towns: [], shops: []),
        isLoading: false,
        isError: false,
      );
}
