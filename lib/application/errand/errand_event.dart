part of 'errand_bloc.dart';

@freezed
class ErrandEvent with _$ErrandEvent {
  const factory ErrandEvent.getErrandInfo() = _GetErrandInfo;
  const factory ErrandEvent.getVehicleInfo() = _GetVehicleInfo;
  const factory ErrandEvent.getDriverInfo() = _GetDriverInfo;
  const factory ErrandEvent.getRouteInfo() = _GetRouteInfo;
}
