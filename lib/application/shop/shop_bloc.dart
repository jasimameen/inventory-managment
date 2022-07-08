import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../presentation/shop/screen_register_shop.dart';
import '../../domain/core/failure.dart';
import '../../domain/models/shop.dart';
import '../../domain/shop/i_shop_repo.dart';

part 'shop_bloc.freezed.dart';
part 'shop_event.dart';
part 'shop_state.dart';

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final IShopRepo _shopRepo;
  ShopBloc(this._shopRepo) : super(ShopState.initial()) {
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
    on<_RegisterNewShop>((event, emit) {
      String name = RegShopControllers.shopName.text;
      log('this is the shop name got from $name');
    });
  }
}
