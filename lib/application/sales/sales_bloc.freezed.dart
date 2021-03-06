// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSales,
    required TResult Function(String shopId) getAllSalesByShopId,
    required TResult Function(String shopId) addNewSale,
    required TResult Function(String saleId, String shopId) deleteSale,
    required TResult Function(String saleId, double newPrice) updateSalePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSales value) getAllSales,
    required TResult Function(_GetAllSalesByShopId value) getAllSalesByShopId,
    required TResult Function(_AddNewSale value) addNewSale,
    required TResult Function(_DeleteSale value) deleteSale,
    required TResult Function(_UpdateSale value) updateSalePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesEventCopyWith<$Res> {
  factory $SalesEventCopyWith(
          SalesEvent value, $Res Function(SalesEvent) then) =
      _$SalesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SalesEventCopyWithImpl<$Res> implements $SalesEventCopyWith<$Res> {
  _$SalesEventCopyWithImpl(this._value, this._then);

  final SalesEvent _value;
  // ignore: unused_field
  final $Res Function(SalesEvent) _then;
}

/// @nodoc
abstract class _$$_GetAllSalesCopyWith<$Res> {
  factory _$$_GetAllSalesCopyWith(
          _$_GetAllSales value, $Res Function(_$_GetAllSales) then) =
      __$$_GetAllSalesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllSalesCopyWithImpl<$Res> extends _$SalesEventCopyWithImpl<$Res>
    implements _$$_GetAllSalesCopyWith<$Res> {
  __$$_GetAllSalesCopyWithImpl(
      _$_GetAllSales _value, $Res Function(_$_GetAllSales) _then)
      : super(_value, (v) => _then(v as _$_GetAllSales));

  @override
  _$_GetAllSales get _value => super._value as _$_GetAllSales;
}

/// @nodoc

class _$_GetAllSales implements _GetAllSales {
  const _$_GetAllSales();

  @override
  String toString() {
    return 'SalesEvent.getAllSales()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllSales);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSales,
    required TResult Function(String shopId) getAllSalesByShopId,
    required TResult Function(String shopId) addNewSale,
    required TResult Function(String saleId, String shopId) deleteSale,
    required TResult Function(String saleId, double newPrice) updateSalePrice,
  }) {
    return getAllSales();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
  }) {
    return getAllSales?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (getAllSales != null) {
      return getAllSales();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSales value) getAllSales,
    required TResult Function(_GetAllSalesByShopId value) getAllSalesByShopId,
    required TResult Function(_AddNewSale value) addNewSale,
    required TResult Function(_DeleteSale value) deleteSale,
    required TResult Function(_UpdateSale value) updateSalePrice,
  }) {
    return getAllSales(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
  }) {
    return getAllSales?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (getAllSales != null) {
      return getAllSales(this);
    }
    return orElse();
  }
}

abstract class _GetAllSales implements SalesEvent {
  const factory _GetAllSales() = _$_GetAllSales;
}

/// @nodoc
abstract class _$$_GetAllSalesByShopIdCopyWith<$Res> {
  factory _$$_GetAllSalesByShopIdCopyWith(_$_GetAllSalesByShopId value,
          $Res Function(_$_GetAllSalesByShopId) then) =
      __$$_GetAllSalesByShopIdCopyWithImpl<$Res>;
  $Res call({String shopId});
}

/// @nodoc
class __$$_GetAllSalesByShopIdCopyWithImpl<$Res>
    extends _$SalesEventCopyWithImpl<$Res>
    implements _$$_GetAllSalesByShopIdCopyWith<$Res> {
  __$$_GetAllSalesByShopIdCopyWithImpl(_$_GetAllSalesByShopId _value,
      $Res Function(_$_GetAllSalesByShopId) _then)
      : super(_value, (v) => _then(v as _$_GetAllSalesByShopId));

  @override
  _$_GetAllSalesByShopId get _value => super._value as _$_GetAllSalesByShopId;

  @override
  $Res call({
    Object? shopId = freezed,
  }) {
    return _then(_$_GetAllSalesByShopId(
      shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllSalesByShopId implements _GetAllSalesByShopId {
  const _$_GetAllSalesByShopId(this.shopId);

  @override
  final String shopId;

  @override
  String toString() {
    return 'SalesEvent.getAllSalesByShopId(shopId: $shopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllSalesByShopId &&
            const DeepCollectionEquality().equals(other.shopId, shopId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shopId));

  @JsonKey(ignore: true)
  @override
  _$$_GetAllSalesByShopIdCopyWith<_$_GetAllSalesByShopId> get copyWith =>
      __$$_GetAllSalesByShopIdCopyWithImpl<_$_GetAllSalesByShopId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSales,
    required TResult Function(String shopId) getAllSalesByShopId,
    required TResult Function(String shopId) addNewSale,
    required TResult Function(String saleId, String shopId) deleteSale,
    required TResult Function(String saleId, double newPrice) updateSalePrice,
  }) {
    return getAllSalesByShopId(shopId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
  }) {
    return getAllSalesByShopId?.call(shopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (getAllSalesByShopId != null) {
      return getAllSalesByShopId(shopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSales value) getAllSales,
    required TResult Function(_GetAllSalesByShopId value) getAllSalesByShopId,
    required TResult Function(_AddNewSale value) addNewSale,
    required TResult Function(_DeleteSale value) deleteSale,
    required TResult Function(_UpdateSale value) updateSalePrice,
  }) {
    return getAllSalesByShopId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
  }) {
    return getAllSalesByShopId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (getAllSalesByShopId != null) {
      return getAllSalesByShopId(this);
    }
    return orElse();
  }
}

abstract class _GetAllSalesByShopId implements SalesEvent {
  const factory _GetAllSalesByShopId(final String shopId) =
      _$_GetAllSalesByShopId;

  String get shopId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GetAllSalesByShopIdCopyWith<_$_GetAllSalesByShopId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewSaleCopyWith<$Res> {
  factory _$$_AddNewSaleCopyWith(
          _$_AddNewSale value, $Res Function(_$_AddNewSale) then) =
      __$$_AddNewSaleCopyWithImpl<$Res>;
  $Res call({String shopId});
}

/// @nodoc
class __$$_AddNewSaleCopyWithImpl<$Res> extends _$SalesEventCopyWithImpl<$Res>
    implements _$$_AddNewSaleCopyWith<$Res> {
  __$$_AddNewSaleCopyWithImpl(
      _$_AddNewSale _value, $Res Function(_$_AddNewSale) _then)
      : super(_value, (v) => _then(v as _$_AddNewSale));

  @override
  _$_AddNewSale get _value => super._value as _$_AddNewSale;

  @override
  $Res call({
    Object? shopId = freezed,
  }) {
    return _then(_$_AddNewSale(
      shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddNewSale implements _AddNewSale {
  const _$_AddNewSale(this.shopId);

  @override
  final String shopId;

  @override
  String toString() {
    return 'SalesEvent.addNewSale(shopId: $shopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewSale &&
            const DeepCollectionEquality().equals(other.shopId, shopId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shopId));

  @JsonKey(ignore: true)
  @override
  _$$_AddNewSaleCopyWith<_$_AddNewSale> get copyWith =>
      __$$_AddNewSaleCopyWithImpl<_$_AddNewSale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSales,
    required TResult Function(String shopId) getAllSalesByShopId,
    required TResult Function(String shopId) addNewSale,
    required TResult Function(String saleId, String shopId) deleteSale,
    required TResult Function(String saleId, double newPrice) updateSalePrice,
  }) {
    return addNewSale(shopId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
  }) {
    return addNewSale?.call(shopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (addNewSale != null) {
      return addNewSale(shopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSales value) getAllSales,
    required TResult Function(_GetAllSalesByShopId value) getAllSalesByShopId,
    required TResult Function(_AddNewSale value) addNewSale,
    required TResult Function(_DeleteSale value) deleteSale,
    required TResult Function(_UpdateSale value) updateSalePrice,
  }) {
    return addNewSale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
  }) {
    return addNewSale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (addNewSale != null) {
      return addNewSale(this);
    }
    return orElse();
  }
}

abstract class _AddNewSale implements SalesEvent {
  const factory _AddNewSale(final String shopId) = _$_AddNewSale;

  String get shopId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddNewSaleCopyWith<_$_AddNewSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSaleCopyWith<$Res> {
  factory _$$_DeleteSaleCopyWith(
          _$_DeleteSale value, $Res Function(_$_DeleteSale) then) =
      __$$_DeleteSaleCopyWithImpl<$Res>;
  $Res call({String saleId, String shopId});
}

/// @nodoc
class __$$_DeleteSaleCopyWithImpl<$Res> extends _$SalesEventCopyWithImpl<$Res>
    implements _$$_DeleteSaleCopyWith<$Res> {
  __$$_DeleteSaleCopyWithImpl(
      _$_DeleteSale _value, $Res Function(_$_DeleteSale) _then)
      : super(_value, (v) => _then(v as _$_DeleteSale));

  @override
  _$_DeleteSale get _value => super._value as _$_DeleteSale;

  @override
  $Res call({
    Object? saleId = freezed,
    Object? shopId = freezed,
  }) {
    return _then(_$_DeleteSale(
      saleId == freezed
          ? _value.saleId
          : saleId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteSale implements _DeleteSale {
  const _$_DeleteSale(this.saleId, this.shopId);

  @override
  final String saleId;
  @override
  final String shopId;

  @override
  String toString() {
    return 'SalesEvent.deleteSale(saleId: $saleId, shopId: $shopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSale &&
            const DeepCollectionEquality().equals(other.saleId, saleId) &&
            const DeepCollectionEquality().equals(other.shopId, shopId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(saleId),
      const DeepCollectionEquality().hash(shopId));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteSaleCopyWith<_$_DeleteSale> get copyWith =>
      __$$_DeleteSaleCopyWithImpl<_$_DeleteSale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSales,
    required TResult Function(String shopId) getAllSalesByShopId,
    required TResult Function(String shopId) addNewSale,
    required TResult Function(String saleId, String shopId) deleteSale,
    required TResult Function(String saleId, double newPrice) updateSalePrice,
  }) {
    return deleteSale(saleId, shopId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
  }) {
    return deleteSale?.call(saleId, shopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (deleteSale != null) {
      return deleteSale(saleId, shopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSales value) getAllSales,
    required TResult Function(_GetAllSalesByShopId value) getAllSalesByShopId,
    required TResult Function(_AddNewSale value) addNewSale,
    required TResult Function(_DeleteSale value) deleteSale,
    required TResult Function(_UpdateSale value) updateSalePrice,
  }) {
    return deleteSale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
  }) {
    return deleteSale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (deleteSale != null) {
      return deleteSale(this);
    }
    return orElse();
  }
}

abstract class _DeleteSale implements SalesEvent {
  const factory _DeleteSale(final String saleId, final String shopId) =
      _$_DeleteSale;

  String get saleId => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeleteSaleCopyWith<_$_DeleteSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSaleCopyWith<$Res> {
  factory _$$_UpdateSaleCopyWith(
          _$_UpdateSale value, $Res Function(_$_UpdateSale) then) =
      __$$_UpdateSaleCopyWithImpl<$Res>;
  $Res call({String saleId, double newPrice});
}

/// @nodoc
class __$$_UpdateSaleCopyWithImpl<$Res> extends _$SalesEventCopyWithImpl<$Res>
    implements _$$_UpdateSaleCopyWith<$Res> {
  __$$_UpdateSaleCopyWithImpl(
      _$_UpdateSale _value, $Res Function(_$_UpdateSale) _then)
      : super(_value, (v) => _then(v as _$_UpdateSale));

  @override
  _$_UpdateSale get _value => super._value as _$_UpdateSale;

  @override
  $Res call({
    Object? saleId = freezed,
    Object? newPrice = freezed,
  }) {
    return _then(_$_UpdateSale(
      saleId == freezed
          ? _value.saleId
          : saleId // ignore: cast_nullable_to_non_nullable
              as String,
      newPrice == freezed
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_UpdateSale implements _UpdateSale {
  const _$_UpdateSale(this.saleId, this.newPrice);

  @override
  final String saleId;
  @override
  final double newPrice;

  @override
  String toString() {
    return 'SalesEvent.updateSalePrice(saleId: $saleId, newPrice: $newPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSale &&
            const DeepCollectionEquality().equals(other.saleId, saleId) &&
            const DeepCollectionEquality().equals(other.newPrice, newPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(saleId),
      const DeepCollectionEquality().hash(newPrice));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateSaleCopyWith<_$_UpdateSale> get copyWith =>
      __$$_UpdateSaleCopyWithImpl<_$_UpdateSale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSales,
    required TResult Function(String shopId) getAllSalesByShopId,
    required TResult Function(String shopId) addNewSale,
    required TResult Function(String saleId, String shopId) deleteSale,
    required TResult Function(String saleId, double newPrice) updateSalePrice,
  }) {
    return updateSalePrice(saleId, newPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
  }) {
    return updateSalePrice?.call(saleId, newPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSales,
    TResult Function(String shopId)? getAllSalesByShopId,
    TResult Function(String shopId)? addNewSale,
    TResult Function(String saleId, String shopId)? deleteSale,
    TResult Function(String saleId, double newPrice)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (updateSalePrice != null) {
      return updateSalePrice(saleId, newPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSales value) getAllSales,
    required TResult Function(_GetAllSalesByShopId value) getAllSalesByShopId,
    required TResult Function(_AddNewSale value) addNewSale,
    required TResult Function(_DeleteSale value) deleteSale,
    required TResult Function(_UpdateSale value) updateSalePrice,
  }) {
    return updateSalePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
  }) {
    return updateSalePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSales value)? getAllSales,
    TResult Function(_GetAllSalesByShopId value)? getAllSalesByShopId,
    TResult Function(_AddNewSale value)? addNewSale,
    TResult Function(_DeleteSale value)? deleteSale,
    TResult Function(_UpdateSale value)? updateSalePrice,
    required TResult orElse(),
  }) {
    if (updateSalePrice != null) {
      return updateSalePrice(this);
    }
    return orElse();
  }
}

abstract class _UpdateSale implements SalesEvent {
  const factory _UpdateSale(final String saleId, final double newPrice) =
      _$_UpdateSale;

  String get saleId => throw _privateConstructorUsedError;
  double get newPrice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateSaleCopyWith<_$_UpdateSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesState {
  List<SalesModel> get salesList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesStateCopyWith<SalesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesStateCopyWith<$Res> {
  factory $SalesStateCopyWith(
          SalesState value, $Res Function(SalesState) then) =
      _$SalesStateCopyWithImpl<$Res>;
  $Res call({List<SalesModel> salesList, bool isLoading, bool isError});
}

/// @nodoc
class _$SalesStateCopyWithImpl<$Res> implements $SalesStateCopyWith<$Res> {
  _$SalesStateCopyWithImpl(this._value, this._then);

  final SalesState _value;
  // ignore: unused_field
  final $Res Function(SalesState) _then;

  @override
  $Res call({
    Object? salesList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      salesList: salesList == freezed
          ? _value.salesList
          : salesList // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SalesStartedCopyWith<$Res>
    implements $SalesStateCopyWith<$Res> {
  factory _$$_SalesStartedCopyWith(
          _$_SalesStarted value, $Res Function(_$_SalesStarted) then) =
      __$$_SalesStartedCopyWithImpl<$Res>;
  @override
  $Res call({List<SalesModel> salesList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_SalesStartedCopyWithImpl<$Res> extends _$SalesStateCopyWithImpl<$Res>
    implements _$$_SalesStartedCopyWith<$Res> {
  __$$_SalesStartedCopyWithImpl(
      _$_SalesStarted _value, $Res Function(_$_SalesStarted) _then)
      : super(_value, (v) => _then(v as _$_SalesStarted));

  @override
  _$_SalesStarted get _value => super._value as _$_SalesStarted;

  @override
  $Res call({
    Object? salesList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_SalesStarted(
      salesList: salesList == freezed
          ? _value._salesList
          : salesList // ignore: cast_nullable_to_non_nullable
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

class _$_SalesStarted implements _SalesStarted {
  const _$_SalesStarted(
      {required final List<SalesModel> salesList,
      required this.isLoading,
      required this.isError})
      : _salesList = salesList;

  final List<SalesModel> _salesList;
  @override
  List<SalesModel> get salesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SalesState(salesList: $salesList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesStarted &&
            const DeepCollectionEquality()
                .equals(other._salesList, _salesList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_salesList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_SalesStartedCopyWith<_$_SalesStarted> get copyWith =>
      __$$_SalesStartedCopyWithImpl<_$_SalesStarted>(this, _$identity);
}

abstract class _SalesStarted implements SalesState {
  const factory _SalesStarted(
      {required final List<SalesModel> salesList,
      required final bool isLoading,
      required final bool isError}) = _$_SalesStarted;

  @override
  List<SalesModel> get salesList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SalesStartedCopyWith<_$_SalesStarted> get copyWith =>
      throw _privateConstructorUsedError;
}
