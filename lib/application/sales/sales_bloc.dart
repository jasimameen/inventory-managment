import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/core/persisted_data.dart';
import '../../domain/models/sales.dart';
import '../../infrastructure/auth/auth_repo_impl.dart';

part 'sales_bloc.freezed.dart';
part 'sales_event.dart';
part 'sales_state.dart';

@injectable
class SalesBloc extends Bloc<SalesEvent, SalesState> {
  SalesBloc() : super(SalesState.initial()) {
    on<_GetAllSalesByShopId>((event, emit) async {
      var data = SalesModel(
        shop: 'abc',
        stock: 'plastic',
        qty: 435,
        unitprice: 5,
        totalprice: 1230,
        date: '2022-01-01',
        errand: PersistedData.errandId!,
        route: PersistedData.routeId!.toString(),
        vehicle: PersistedData.vehicleId!.toString(),
      );
      emit(state.copyWith(salesList: [data, data, data]));
    });
  }
}
