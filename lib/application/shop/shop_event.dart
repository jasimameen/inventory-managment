part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.getAllShops() = _GetAllShops;
  const factory ShopEvent.getShop() = _GetShop;
  const factory ShopEvent.registerNewShop() = _RegisterNewShop;
}
