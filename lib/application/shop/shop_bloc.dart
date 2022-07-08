import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/route/i_route_repo.dart';
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
  final IRouteRepo _routeRepo;
  ShopBloc(this._shopRepo, this._routeRepo) : super(ShopState.initial()) {
    // Get list of All Shops
    on<_GetAllShops>((event, emit) async {
      // send Loding state
      emit(
          state.copyWith(isLoading: true, shopsFailureOrSuccessOption: none()));

      // get Data
      final shopsOption = await _shopRepo.fetchAllShops();
      final _newSatate = shopsOption.fold(
        (failure) {
          log(failure.toString());
          return state.copyWith(isError: true, isLoading: false);
        },
        (results) {
          return state.copyWith(
            shopsFailureOrSuccessOption: some(right(results)),
            shopsList: results,
            isLoading: false,
            isError: false,
          );
        },
      );

      // update UI
      emit(_newSatate);
    });

    // Register New Shop
    on<_RegisterNewShop>((event, emit) async {
      final shopData = ShopModel(
        name: RegShopControllers.shopName.text,
        shop_id: RegShopControllers.shopName.text,
        contact_number: int.parse(RegShopControllers.contactNumber.text),
        email: RegShopControllers.email.text,
        town: int.parse(RegShopControllers.town.text),
      ).toMap();

      final resp = await _shopRepo.registerNewShop(shopData);

      resp.fold(
        (l) => null,
        (res) {
          RegShopControllers.clearAll();
          return Navigation.push(
            event.context,
            ScreenShop(
              shopName: res.name,
              shopId: res.shop_id,
              shopAddress: res.email,
              contactNumber: res.contact_number.toString(),
            ),
          );
        },
      );
    });
  }
}
