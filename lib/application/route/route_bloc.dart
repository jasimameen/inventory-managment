import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/api_models/i_api_get.dart';
import 'package:invendory_managment/domain/api_models/i_api_get_all.dart';
import 'package:invendory_managment/domain/core/persisted_data.dart';
import 'package:invendory_managment/infrastructure/api_models/api_get_impl.dart';

import '../../domain/models/shop.dart';
import '../../domain/models/town.dart';
import '../../domain/route/i_route_repo.dart';

part 'route_bloc.freezed.dart';
part 'route_event.dart';
part 'route_state.dart';

@injectable
class RouteBloc extends Bloc<RouteEvent, RouteState> {
  final IApiGet _apiGet;
  final IApiGetAll _apiGetAll;
  RouteBloc(this._apiGet, this._apiGetAll) : super(RouteState.initial()) {
    on<_Started>((event, emit) async {
      // send loading state
      emit(state.copyWith(isLoading: true));

      // get data
      // final routeData = await _apiGet.getRoute(PersistedData.routeId ?? -1);
      final towns = await _apiGetAll.getTowns();

      final _newState = state.copyWith(
        isLoading: false,
        towns: towns,
      );

      // update ui
      emit(_newState);
    });
  }
}
