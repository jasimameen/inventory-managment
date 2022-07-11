import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/api_models/i_api_model_from_id_repo.dart';
import 'package:invendory_managment/domain/api_models/i_api_models_repo.dart';
import 'package:invendory_managment/domain/models/item.dart';
import 'package:invendory_managment/domain/models/sales.dart';
import 'package:invendory_managment/domain/route/i_route_repo.dart';
import 'package:invendory_managment/domain/stock/i_stock_repo.dart';
import '../../presentation/core/navigation.dart';
import '../../presentation/shop/screen_register_shop.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/shop.dart';
import '../../domain/shop/i_shop_repo.dart';
import '../../presentation/shop/screen_shop.dart';

part 'shop_bloc.freezed.dart';
part 'shop_event.dart';
part 'shop_state.dart';

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final IShopRepo _shopRepo;
  final IApiModelsRepo _stockRepo;
  //
  final IApiModelFromIdRepo _apiModelFromIdRepo;
  final IApiModelsRepo _apiModelsRepo;
  ShopBloc(this._shopRepo, this._stockRepo, this._apiModelFromIdRepo,
      this._apiModelsRepo)
      : super(ShopState.initial()) {
    // Get list of All Shops
    on<_GetAllShops>((event, emit) async {
      // send Loding state
      emit(state.copyWith(isLoading: true));

      // get Data
      final shops = await _apiModelsRepo.getShops();

      final _newState = state.copyWith(shopsList: shops, isLoading: false);

      // update UI
      emit(_newState);
    });

    // Register New Shop
    on<_RegisterNewShop>((event, emit) async {
      final shopData = ShopModel(
        name: RegShopControllers.shopName.text,
        shop_id: RegShopControllers.shopName.text,
        contact_number: int.parse(RegShopControllers.contactNumber.text),
        email: RegShopControllers.email.text,
        town: int.parse(RegShopControllers.town.text),
        // sales: [],
      ).toMap();

      final resp = await _shopRepo.registerNewShop(shopData);

      resp.fold(
        (l) => null,
        (res) {
          return Navigation.push(const ScreenShop(), arguments: res);
        },
      );
    });

    // sale
    on<_GetShop>((event, emit) async {
      final resp = await _apiModelFromIdRepo.getShop(event.shopId);
      final _newState = state.copyWith(shopModel: resp);
      emit(_newState);
    });
  }
}
