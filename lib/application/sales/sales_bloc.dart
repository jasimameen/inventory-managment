import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../domain/api_models/i_api_delete.dart';
import '../../domain/api_models/i_api_get.dart';
import '../../domain/api_models/i_api_get_all.dart';
import '../../domain/api_models/i_api_post.dart';
import '../../domain/core/persisted_data.dart';
import '../../domain/models/sales.dart';
import '../../domain/models/stock.dart';

part 'sales_bloc.freezed.dart'; 
part 'sales_event.dart';
part 'sales_state.dart';

@injectable
class SalesBloc extends Bloc<SalesEvent, SalesState> {
  final IApiGet _apiGet;
  final IApiGetAll _apiGetAll;
  final IApiPost _apiPost;
  final IApiDelete _apiDelete;
  SalesBloc(this._apiGet, this._apiGetAll, this._apiPost, this._apiDelete)
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
      final route = await _apiGet.getRoute(PersistedData.routeId ?? -1);
      final stock = await _apiGet.getStock(event.stockId);

      final qty = event.qty;
      final unitPrice = stock.itemModel?.price ?? 0;
      final totalPrice = qty * unitPrice;

      final dummyModel = SalesModel(
        vehicle: PersistedData.vehicleModel?.vehicle_number ?? '',
        route: route.route_id,
        shop: event.shopId,
        stock: stock.stock_id,
        qty: qty,
        unitprice: unitPrice,
        totalprice: totalPrice,
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        errand: PersistedData.errandId ?? '',
      );
      final newSale = await _apiPost.addSale(dummyModel);
      emit(state.copyWith(
          salesList: [...state.salesList, newSale], isLoading: false));
    });

    // get all items
    on<_GetAllStocks>((event, emit) async {
      final responce = await _apiGetAll.getStocks();
      emit(state.copyWith(stocks: responce));
    });

    // total Amound
    on<_TotalAmound>((event, emit) async {
      log('total called');
      int total = 0;
      state.salesList.forEach((element) {
        total += element.totalprice;
      });
      emit(state.copyWith(total: total));
    });

    // deleteSale
    on<_DeleteSale>((event, emit) async {
      await _apiDelete.deleteSale(event.saleId);
      log('bhhhahahhah');
      add(_GetAllSalesByShopId(state.salesList.first.shop));
    });
  }
}
