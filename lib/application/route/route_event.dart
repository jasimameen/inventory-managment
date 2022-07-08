part of 'route_bloc.dart';

@freezed
class RouteEvent with _$RouteEvent {
  const factory RouteEvent.started() = _Started;
}