import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/api_models/i_api_post.dart';

import '../../domain/api_models/i_api_get.dart';
import '../../domain/api_models/i_api_get_all.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/sales.dart';
import '../../domain/models/shop.dart';
import '../../domain/shop/i_shop_repo.dart';
import '../../presentation/core/navigation.dart';
import '../../presentation/shop/screen_register_shop.dart';
import '../../presentation/shop/screen_shop.dart';

part 'shop_bloc.freezed.dart';
part 'shop_event.dart';
part 'shop_state.dart';

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final IShopRepo _shopRepo;
  //
  final IApiGet _apiGet;
  final IApiGetAll _apiGetAll;
  final IApiPost _apiPost;
  ShopBloc(this._shopRepo, this._apiGet, this._apiGetAll, this._apiPost)
      : super(ShopState.initial()) {
    // Get list of All Shops
    on<_GetAllShops>((event, emit) async {
      // send Loding state
      emit(state.copyWith(isLoading: true));

      // get Data
      final shops = await _apiGetAll.getShops();

      final _newState = state.copyWith(shopsList: shops, isLoading: false);

      // update UI
      emit(_newState);
    });

    // Register New Shop
    on<_RegisterNewShop>((event, emit) async {
      log(event.shopData.toString());
      await _apiPost.registerShop(event.shopData).then((value) {
        state.copyWith(shopsList: [...state.shopsList, value]);
        Navigation.push(const ScreenShop(), arguments: value);
      });
    });

    // sale
    on<_GetShop>((event, emit) async {
      final resp = await _apiGet.getShop(event.shopId);
      final _newState = state.copyWith(shopModel: resp);
      emit(_newState);
    });
  }
}
