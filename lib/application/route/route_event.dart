part of 'route_bloc.dart';

@freezed
class RouteEvent with _$RouteEvent {
  const factory RouteEvent.started() = _Started;
  const factory RouteEvent.getTowns() = _GetTowns;
}
