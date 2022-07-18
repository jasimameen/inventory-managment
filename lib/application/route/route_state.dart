part of 'route_bloc.dart';

@freezed
class RouteState with _$RouteState {
  const factory RouteState({
    required String routeId,
    required String name,
    required List<TownModel> towns,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory RouteState.initial() => const RouteState(
        routeId: '',
        name: '',
        towns: [],
        isLoading: false,
        isError: false,
      );
}
