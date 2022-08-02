// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVehicleStocks,
    required TResult Function(int warehouseId) getWarehouseStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getVehicleStocks,
    TResult Function(int warehouseId)? getWarehouseStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVehicleStocks,
    TResult Function(int warehouseId)? getWarehouseStock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVehicleStocks value) getVehicleStocks,
    required TResult Function(_GetWarehouseStock value) getWarehouseStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetVehicleStocks value)? getVehicleStocks,
    TResult Function(_GetWarehouseStock value)? getWarehouseStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVehicleStocks value)? getVehicleStocks,
    TResult Function(_GetWarehouseStock value)? getWarehouseStock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEventCopyWith<$Res> {
  factory $StockEventCopyWith(
          StockEvent value, $Res Function(StockEvent) then) =
      _$StockEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StockEventCopyWithImpl<$Res> implements $StockEventCopyWith<$Res> {
  _$StockEventCopyWithImpl(this._value, this._then);

  final StockEvent _value;
  // ignore: unused_field
  final $Res Function(StockEvent) _then;
}

/// @nodoc
abstract class _$$_GetVehicleStocksCopyWith<$Res> {
  factory _$$_GetVehicleStocksCopyWith(
          _$_GetVehicleStocks value, $Res Function(_$_GetVehicleStocks) then) =
      __$$_GetVehicleStocksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetVehicleStocksCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res>
    implements _$$_GetVehicleStocksCopyWith<$Res> {
  __$$_GetVehicleStocksCopyWithImpl(
      _$_GetVehicleStocks _value, $Res Function(_$_GetVehicleStocks) _then)
      : super(_value, (v) => _then(v as _$_GetVehicleStocks));

  @override
  _$_GetVehicleStocks get _value => super._value as _$_GetVehicleStocks;
}

/// @nodoc

class _$_GetVehicleStocks implements _GetVehicleStocks {
  const _$_GetVehicleStocks();

  @override
  String toString() {
    return 'StockEvent.getVehicleStocks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetVehicleStocks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVehicleStocks,
    required TResult Function(int warehouseId) getWarehouseStock,
  }) {
    return getVehicleStocks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getVehicleStocks,
    TResult Function(int warehouseId)? getWarehouseStock,
  }) {
    return getVehicleStocks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVehicleStocks,
    TResult Function(int warehouseId)? getWarehouseStock,
    required TResult orElse(),
  }) {
    if (getVehicleStocks != null) {
      return getVehicleStocks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVehicleStocks value) getVehicleStocks,
    required TResult Function(_GetWarehouseStock value) getWarehouseStock,
  }) {
    return getVehicleStocks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetVehicleStocks value)? getVehicleStocks,
    TResult Function(_GetWarehouseStock value)? getWarehouseStock,
  }) {
    return getVehicleStocks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVehicleStocks value)? getVehicleStocks,
    TResult Function(_GetWarehouseStock value)? getWarehouseStock,
    required TResult orElse(),
  }) {
    if (getVehicleStocks != null) {
      return getVehicleStocks(this);
    }
    return orElse();
  }
}

abstract class _GetVehicleStocks implements StockEvent {
  const factory _GetVehicleStocks() = _$_GetVehicleStocks;
}

/// @nodoc
abstract class _$$_GetWarehouseStockCopyWith<$Res> {
  factory _$$_GetWarehouseStockCopyWith(_$_GetWarehouseStock value,
          $Res Function(_$_GetWarehouseStock) then) =
      __$$_GetWarehouseStockCopyWithImpl<$Res>;
  $Res call({int warehouseId});
}

/// @nodoc
class __$$_GetWarehouseStockCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res>
    implements _$$_GetWarehouseStockCopyWith<$Res> {
  __$$_GetWarehouseStockCopyWithImpl(
      _$_GetWarehouseStock _value, $Res Function(_$_GetWarehouseStock) _then)
      : super(_value, (v) => _then(v as _$_GetWarehouseStock));

  @override
  _$_GetWarehouseStock get _value => super._value as _$_GetWarehouseStock;

  @override
  $Res call({
    Object? warehouseId = freezed,
  }) {
    return _then(_$_GetWarehouseStock(
      warehouseId == freezed
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetWarehouseStock implements _GetWarehouseStock {
  const _$_GetWarehouseStock(this.warehouseId);

  @override
  final int warehouseId;

  @override
  String toString() {
    return 'StockEvent.getWarehouseStock(warehouseId: $warehouseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWarehouseStock &&
            const DeepCollectionEquality()
                .equals(other.warehouseId, warehouseId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(warehouseId));

  @JsonKey(ignore: true)
  @override
  _$$_GetWarehouseStockCopyWith<_$_GetWarehouseStock> get copyWith =>
      __$$_GetWarehouseStockCopyWithImpl<_$_GetWarehouseStock>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVehicleStocks,
    required TResult Function(int warehouseId) getWarehouseStock,
  }) {
    return getWarehouseStock(warehouseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getVehicleStocks,
    TResult Function(int warehouseId)? getWarehouseStock,
  }) {
    return getWarehouseStock?.call(warehouseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVehicleStocks,
    TResult Function(int warehouseId)? getWarehouseStock,
    required TResult orElse(),
  }) {
    if (getWarehouseStock != null) {
      return getWarehouseStock(warehouseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVehicleStocks value) getVehicleStocks,
    required TResult Function(_GetWarehouseStock value) getWarehouseStock,
  }) {
    return getWarehouseStock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetVehicleStocks value)? getVehicleStocks,
    TResult Function(_GetWarehouseStock value)? getWarehouseStock,
  }) {
    return getWarehouseStock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVehicleStocks value)? getVehicleStocks,
    TResult Function(_GetWarehouseStock value)? getWarehouseStock,
    required TResult orElse(),
  }) {
    if (getWarehouseStock != null) {
      return getWarehouseStock(this);
    }
    return orElse();
  }
}

abstract class _GetWarehouseStock implements StockEvent {
  const factory _GetWarehouseStock(final int warehouseId) =
      _$_GetWarehouseStock;

  int get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GetWarehouseStockCopyWith<_$_GetWarehouseStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StockState {
  List<StockModel> get stocks => throw _privateConstructorUsedError;
  List<StockModel> get warehouseStocks => throw _privateConstructorUsedError;
  List<ItemModel> get items => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockStateCopyWith<StockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res>;
  $Res call(
      {List<StockModel> stocks,
      List<StockModel> warehouseStocks,
      List<ItemModel> items,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res> implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  final StockState _value;
  // ignore: unused_field
  final $Res Function(StockState) _then;

  @override
  $Res call({
    Object? stocks = freezed,
    Object? warehouseStocks = freezed,
    Object? items = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      warehouseStocks: warehouseStocks == freezed
          ? _value.warehouseStocks
          : warehouseStocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
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
abstract class _$$_StockStartedCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$_StockStartedCopyWith(
          _$_StockStarted value, $Res Function(_$_StockStarted) then) =
      __$$_StockStartedCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<StockModel> stocks,
      List<StockModel> warehouseStocks,
      List<ItemModel> items,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_StockStartedCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements _$$_StockStartedCopyWith<$Res> {
  __$$_StockStartedCopyWithImpl(
      _$_StockStarted _value, $Res Function(_$_StockStarted) _then)
      : super(_value, (v) => _then(v as _$_StockStarted));

  @override
  _$_StockStarted get _value => super._value as _$_StockStarted;

  @override
  $Res call({
    Object? stocks = freezed,
    Object? warehouseStocks = freezed,
    Object? items = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_StockStarted(
      stocks: stocks == freezed
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      warehouseStocks: warehouseStocks == freezed
          ? _value._warehouseStocks
          : warehouseStocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
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

class _$_StockStarted implements _StockStarted {
  const _$_StockStarted(
      {required final List<StockModel> stocks,
      required final List<StockModel> warehouseStocks,
      required final List<ItemModel> items,
      required this.isLoading,
      required this.isError})
      : _stocks = stocks,
        _warehouseStocks = warehouseStocks,
        _items = items;

  final List<StockModel> _stocks;
  @override
  List<StockModel> get stocks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  final List<StockModel> _warehouseStocks;
  @override
  List<StockModel> get warehouseStocks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warehouseStocks);
  }

  final List<ItemModel> _items;
  @override
  List<ItemModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'StockState(stocks: $stocks, warehouseStocks: $warehouseStocks, items: $items, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockStarted &&
            const DeepCollectionEquality().equals(other._stocks, _stocks) &&
            const DeepCollectionEquality()
                .equals(other._warehouseStocks, _warehouseStocks) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stocks),
      const DeepCollectionEquality().hash(_warehouseStocks),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_StockStartedCopyWith<_$_StockStarted> get copyWith =>
      __$$_StockStartedCopyWithImpl<_$_StockStarted>(this, _$identity);
}

abstract class _StockStarted implements StockState {
  const factory _StockStarted(
      {required final List<StockModel> stocks,
      required final List<StockModel> warehouseStocks,
      required final List<ItemModel> items,
      required final bool isLoading,
      required final bool isError}) = _$_StockStarted;

  @override
  List<StockModel> get stocks => throw _privateConstructorUsedError;
  @override
  List<StockModel> get warehouseStocks => throw _privateConstructorUsedError;
  @override
  List<ItemModel> get items => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StockStartedCopyWith<_$_StockStarted> get copyWith =>
      throw _privateConstructorUsedError;
}
