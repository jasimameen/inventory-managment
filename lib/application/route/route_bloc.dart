import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/api_models/i_api_get.dart';
import '../../domain/api_models/i_api_get_all.dart';
import '../../domain/core/persisted_data.dart';
import '../../domain/models/shop.dart';
import '../../domain/models/town.dart';

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
      log('route id ' + PersistedData.routeId.toString());
      final routeData = await _apiGet.getRoute(PersistedData.routeId ?? -1);
      final townIds = routeData.towns;
      final shopIds = routeData.shops;

      final rawTownList = await _apiGetAll.getTowns();
      final rawShopList = await _apiGetAll.getShops();

     final towns = rawTownList.where((element) => townIds.contains(element.id)).toList();
     final shops = rawShopList.where((element) => shopIds.contains(element.id)).toList();



      final _newState = state.copyWith(
        isLoading: false,
        towns: towns,
        shops: shops
      );

      // update ui
      emit(_newState);
    });
  }
}
