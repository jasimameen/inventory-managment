part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
 factory ShopState({
    required Option<Either<Failure,List<ShopModel>>> shopsFailureOrSuccessOption,
    required List<ShopModel> shopsList,
    required bool isLoading,
    required bool isError,
  }) = _InitialState;
  factory ShopState.initial() => ShopState(
        shopsFailureOrSuccessOption: none(),
        shopsList: [],
        isLoading: false,
        isError: false,
      );
    // get all state  
    
}
