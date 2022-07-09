// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllShops,
    required TResult Function(String shopId) getSales,
    required TResult Function() registerNewShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllShops value) getAllShops,
    required TResult Function(_GetShop value) getSales,
    required TResult Function(_RegisterNewShop value) registerNewShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res> implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  final ShopEvent _value;
  // ignore: unused_field
  final $Res Function(ShopEvent) _then;
}

/// @nodoc
abstract class _$$_GetAllShopsCopyWith<$Res> {
  factory _$$_GetAllShopsCopyWith(
          _$_GetAllShops value, $Res Function(_$_GetAllShops) then) =
      __$$_GetAllShopsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllShopsCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements _$$_GetAllShopsCopyWith<$Res> {
  __$$_GetAllShopsCopyWithImpl(
      _$_GetAllShops _value, $Res Function(_$_GetAllShops) _then)
      : super(_value, (v) => _then(v as _$_GetAllShops));

  @override
  _$_GetAllShops get _value => super._value as _$_GetAllShops;
}

/// @nodoc

class _$_GetAllShops implements _GetAllShops {
  const _$_GetAllShops();

  @override
  String toString() {
    return 'ShopEvent.getAllShops()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllShops);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllShops,
    required TResult Function(String shopId) getSales,
    required TResult Function() registerNewShop,
  }) {
    return getAllShops();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
  }) {
    return getAllShops?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
    required TResult orElse(),
  }) {
    if (getAllShops != null) {
      return getAllShops();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllShops value) getAllShops,
    required TResult Function(_GetShop value) getSales,
    required TResult Function(_RegisterNewShop value) registerNewShop,
  }) {
    return getAllShops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
  }) {
    return getAllShops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
    required TResult orElse(),
  }) {
    if (getAllShops != null) {
      return getAllShops(this);
    }
    return orElse();
  }
}

abstract class _GetAllShops implements ShopEvent {
  const factory _GetAllShops() = _$_GetAllShops;
}

/// @nodoc
abstract class _$$_GetShopCopyWith<$Res> {
  factory _$$_GetShopCopyWith(
          _$_GetShop value, $Res Function(_$_GetShop) then) =
      __$$_GetShopCopyWithImpl<$Res>;
  $Res call({String shopId});
}

/// @nodoc
class __$$_GetShopCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements _$$_GetShopCopyWith<$Res> {
  __$$_GetShopCopyWithImpl(_$_GetShop _value, $Res Function(_$_GetShop) _then)
      : super(_value, (v) => _then(v as _$_GetShop));

  @override
  _$_GetShop get _value => super._value as _$_GetShop;

  @override
  $Res call({
    Object? shopId = freezed,
  }) {
    return _then(_$_GetShop(
      shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetShop implements _GetShop {
  const _$_GetShop(this.shopId);

  @override
  final String shopId;

  @override
  String toString() {
    return 'ShopEvent.getSales(shopId: $shopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetShop &&
            const DeepCollectionEquality().equals(other.shopId, shopId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shopId));

  @JsonKey(ignore: true)
  @override
  _$$_GetShopCopyWith<_$_GetShop> get copyWith =>
      __$$_GetShopCopyWithImpl<_$_GetShop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllShops,
    required TResult Function(String shopId) getSales,
    required TResult Function() registerNewShop,
  }) {
    return getSales(shopId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
  }) {
    return getSales?.call(shopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
    required TResult orElse(),
  }) {
    if (getSales != null) {
      return getSales(shopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllShops value) getAllShops,
    required TResult Function(_GetShop value) getSales,
    required TResult Function(_RegisterNewShop value) registerNewShop,
  }) {
    return getSales(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
  }) {
    return getSales?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
    required TResult orElse(),
  }) {
    if (getSales != null) {
      return getSales(this);
    }
    return orElse();
  }
}

abstract class _GetShop implements ShopEvent {
  const factory _GetShop(final String shopId) = _$_GetShop;

  String get shopId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GetShopCopyWith<_$_GetShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterNewShopCopyWith<$Res> {
  factory _$$_RegisterNewShopCopyWith(
          _$_RegisterNewShop value, $Res Function(_$_RegisterNewShop) then) =
      __$$_RegisterNewShopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterNewShopCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res>
    implements _$$_RegisterNewShopCopyWith<$Res> {
  __$$_RegisterNewShopCopyWithImpl(
      _$_RegisterNewShop _value, $Res Function(_$_RegisterNewShop) _then)
      : super(_value, (v) => _then(v as _$_RegisterNewShop));

  @override
  _$_RegisterNewShop get _value => super._value as _$_RegisterNewShop;
}

/// @nodoc

class _$_RegisterNewShop implements _RegisterNewShop {
  const _$_RegisterNewShop();

  @override
  String toString() {
    return 'ShopEvent.registerNewShop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterNewShop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllShops,
    required TResult Function(String shopId) getSales,
    required TResult Function() registerNewShop,
  }) {
    return registerNewShop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
  }) {
    return registerNewShop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllShops,
    TResult Function(String shopId)? getSales,
    TResult Function()? registerNewShop,
    required TResult orElse(),
  }) {
    if (registerNewShop != null) {
      return registerNewShop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllShops value) getAllShops,
    required TResult Function(_GetShop value) getSales,
    required TResult Function(_RegisterNewShop value) registerNewShop,
  }) {
    return registerNewShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
  }) {
    return registerNewShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllShops value)? getAllShops,
    TResult Function(_GetShop value)? getSales,
    TResult Function(_RegisterNewShop value)? registerNewShop,
    required TResult orElse(),
  }) {
    if (registerNewShop != null) {
      return registerNewShop(this);
    }
    return orElse();
  }
}

abstract class _RegisterNewShop implements ShopEvent {
  const factory _RegisterNewShop() = _$_RegisterNewShop;
}

/// @nodoc
mixin _$ShopState {
  Option<Either<Failure, List<ShopModel>>> get shopsFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  List<ShopModel> get shopsList => throw _privateConstructorUsedError;
  ShopModel get shopModel => throw _privateConstructorUsedError;
  List<SalesModel> get salesItems => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<ShopModel>>> shopsFailureOrSuccessOption,
      List<ShopModel> shopsList,
      ShopModel shopModel,
      List<SalesModel> salesItems,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res> implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  final ShopState _value;
  // ignore: unused_field
  final $Res Function(ShopState) _then;

  @override
  $Res call({
    Object? shopsFailureOrSuccessOption = freezed,
    Object? shopsList = freezed,
    Object? shopModel = freezed,
    Object? salesItems = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      shopsFailureOrSuccessOption: shopsFailureOrSuccessOption == freezed
          ? _value.shopsFailureOrSuccessOption
          : shopsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<ShopModel>>>,
      shopsList: shopsList == freezed
          ? _value.shopsList
          : shopsList // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      shopModel: shopModel == freezed
          ? _value.shopModel
          : shopModel // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      salesItems: salesItems == freezed
          ? _value.salesItems
          : salesItems // ignore: cast_nullable_to_non_nullable
              as List<SalesModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res>
    implements $ShopStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<ShopModel>>> shopsFailureOrSuccessOption,
      List<ShopModel> shopsList,
      ShopModel shopModel,
      List<SalesModel> salesItems,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, (v) => _then(v as _$_InitialState));

  @override
  _$_InitialState get _value => super._value as _$_InitialState;

  @override
  $Res call({
    Object? shopsFailureOrSuccessOption = freezed,
    Object? shopsList = freezed,
    Object? shopModel = freezed,
    Object? salesItems = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_InitialState(
      shopsFailureOrSuccessOption: shopsFailureOrSuccessOption == freezed
          ? _value.shopsFailureOrSuccessOption
          : shopsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<ShopModel>>>,
      shopsList: shopsList == freezed
          ? _value._shopsList
          : shopsList // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      shopModel: shopModel == freezed
          ? _value.shopModel
          : shopModel // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      salesItems: salesItems == freezed
          ? _value._salesItems
          : salesItems // ignore: cast_nullable_to_non_nullable
              as List<SalesModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitialState implements _InitialState {
  _$_InitialState(
      {required this.shopsFailureOrSuccessOption,
      required final List<ShopModel> shopsList,
      required this.shopModel,
      required final List<SalesModel> salesItems,
      required this.isLoading,
      required this.isError})
      : _shopsList = shopsList,
        _salesItems = salesItems;

  @override
  final Option<Either<Failure, List<ShopModel>>> shopsFailureOrSuccessOption;
  final List<ShopModel> _shopsList;
  @override
  List<ShopModel> get shopsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopsList);
  }

  @override
  final ShopModel shopModel;
  final List<SalesModel> _salesItems;
  @override
  List<SalesModel> get salesItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesItems);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'ShopState(shopsFailureOrSuccessOption: $shopsFailureOrSuccessOption, shopsList: $shopsList, shopModel: $shopModel, salesItems: $salesItems, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialState &&
            const DeepCollectionEquality().equals(
                other.shopsFailureOrSuccessOption,
                shopsFailureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other._shopsList, _shopsList) &&
            const DeepCollectionEquality().equals(other.shopModel, shopModel) &&
            const DeepCollectionEquality()
                .equals(other._salesItems, _salesItems) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shopsFailureOrSuccessOption),
      const DeepCollectionEquality().hash(_shopsList),
      const DeepCollectionEquality().hash(shopModel),
      const DeepCollectionEquality().hash(_salesItems),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      __$$_InitialStateCopyWithImpl<_$_InitialState>(this, _$identity);
}

abstract class _InitialState implements ShopState {
  factory _InitialState(
      {required final Option<Either<Failure, List<ShopModel>>>
          shopsFailureOrSuccessOption,
      required final List<ShopModel> shopsList,
      required final ShopModel shopModel,
      required final List<SalesModel> salesItems,
      required final bool isLoading,
      required final bool isError}) = _$_InitialState;

  @override
  Option<Either<Failure, List<ShopModel>>> get shopsFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  List<ShopModel> get shopsList => throw _privateConstructorUsedError;
  @override
  ShopModel get shopModel => throw _privateConstructorUsedError;
  @override
  List<SalesModel> get salesItems => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}
