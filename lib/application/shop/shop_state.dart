part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  factory ShopState({
    required Option<Either<Failure, List<ShopModel>>>
        shopsFailureOrSuccessOption,
    required List<ShopModel> shopsList,
    required ShopModel shopModel,
    required List<SalesModel> salesItems,
    required bool isLoading,
    required bool isError,
  }) = _InitialState;
  factory ShopState.initial() => ShopState(
        shopsFailureOrSuccessOption: none(),
        shopsList: [],
        shopModel: ShopModel(
          name: 'null',
          shop_id: 'null',
          contact_number: 0,
          email: 'null',
          town: 0,
          // sales: [],
        ),
        salesItems: [],
        isLoading: false,
        isError: false,
      );
  // get all state

}
