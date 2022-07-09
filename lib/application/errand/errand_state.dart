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
        errandInfo: ErrandModel(id: 0, driver: 0, errand_id: '', route: 0),
        vehicleInfo:
            VehicleModel(id: 0, vehicle_number: '', vehicle_type: '', stock: 0),
        driverInfo:
            DriverModel(id: 0, name: '', contact: 1234567890, vehicle: 0),
        routeInfo:
            RouteModel(id: 0, name: '', route_id: '', towns: [], shops: []),
        isLoading: false,
        isError: false,
      );
}
