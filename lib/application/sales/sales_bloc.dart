import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/api_models/i_api_get_all.dart';
import 'package:invendory_managment/domain/api_models/i_api_post.dart';
import 'package:invendory_managment/domain/models/item.dart';
import 'package:invendory_managment/domain/models/stock.dart';

import '../../domain/api_models/i_api_get.dart';
import '../../domain/models/sales.dart';

part 'sales_bloc.freezed.dart';
part 'sales_event.dart';
part 'sales_state.dart';

@injectable
class SalesBloc extends Bloc<SalesEvent, SalesState> {
  final IApiGet _apiGet;
  final IApiGetAll _apiGetAll;
  final IApiPost _apiPost;
  SalesBloc(this._apiGet, this._apiGetAll, this._apiPost)
      : super(SalesState.initial()) {
    // get the history of sales
    on<_GetAllSales>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final prevSales = await _apiGetAll.getSales();

      emit(state.copyWith(salesList: prevSales, isLoading: false));
    });

    // get all sales of a particular shop
    on<_GetAllSalesByShopId>((event, emit) async {
      final responce = await _apiGet.getSalesByShop(event.shopId);
      final sales =
          responce.where((element) => element.shop == event.shopId).toList();
      emit(state.copyWith(salesList: sales));
    });

    // add new sale
    on<_AddNewSale>((event, emit) async {
      final dummyModel = SalesModel(
        vehicle: 'KL1000000',
        route: '001',
        shop: 'delicia',
        stock: 'Glass',
        qty: 200,
        unitprice: 13,
        totalprice: 2600,
        date: DateTime.now().toIso8601String(),
        errand: '001',
      );
      final newSale = await _apiPost.addSale(dummyModel);
      // emit(state.copyWith(
      //     salesList: [...state.salesList], isLoading: false));
    });

    // get all items
    on<_GetAllStocks>((event, emit) async {
      final responce = await _apiGetAll.getStocks();
      log(responce.toString());
      emit(state.copyWith(stocks: responce));
    });

    // total Amound
    on<_TotalAmound>((event, emit) async {
      final total = 0;
      state.salesList.forEach((element) {});
      emit(state.copyWith(total: total));
    });
  }
}
