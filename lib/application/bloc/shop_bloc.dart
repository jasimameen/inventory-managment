import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/domain/core/failure.dart';
import 'package:invendory_managment/domain/models/shop.dart';
import 'package:invendory_managment/domain/shop/i_shop_repo.dart';

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
            shopsList: [
              ShopModel(
                  id: 0,
                  name: 'shop 1`',
                  shop_id: '1',
                  contact_number: 0987654321,
                  email: 'email@email.oc',
                  town: 0),
              ShopModel(
                  id: 0,
                  name: 'shop 2`',
                  shop_id: '1',
                  contact_number: 0987654321,
                  email: 'email@email.oc',
                  town: 0),
            ],
            isLoading: false,
            isError: false,
          );
        },
      );

      // update UI
      emit(_newSatate);
    });
  }
}
