import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/shop.dart';
import '../../domain/models/town.dart';
import '../../domain/route/i_route_repo.dart';

part 'route_bloc.freezed.dart';
part 'route_event.dart';
part 'route_state.dart';

@injectable
class RouteBloc extends Bloc<RouteEvent, RouteState> {
  final IRouteRepo _routeRepo;
  RouteBloc(this._routeRepo) : super(RouteState.initial()) {
    on<_Started>((event, emit) async {
      // send loading state
      emit(state.copyWith(isLoading: true));

      // get data
      final resp = await _routeRepo.getRouteInfo();
      List<TownModel> allTownModels = [];
      await _routeRepo.getTowns().then((value) => value.fold(
            (failure) => null,
            (res) => allTownModels = res,
          ));

      final _newState = resp.fold(
        (l) => state.copyWith(isLoading: false, isError: true),
        (res) {
          List<TownModel> towns = [];
          for (var element in res.towns) {
            towns.add(allTownModels.firstWhere((e) => e.id == element));
          }
          log('old town length = ${allTownModels.length}\nnew town length = ${towns.length}');
          return state.copyWith(
            isLoading: false,
            name: res.name,
            routeId: res.route_id,
            towns: towns,
            shops: [],
          );
        },
      );

      // update ui
      emit(_newState);
    });
  }
}
