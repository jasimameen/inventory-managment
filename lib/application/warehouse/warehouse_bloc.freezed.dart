// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'warehouse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WarehouseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllWarehouses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllWarehouses value) getAllWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllWarehouses value)? getAllWarehouses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllWarehouses value)? getAllWarehouses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseEventCopyWith<$Res> {
  factory $WarehouseEventCopyWith(
          WarehouseEvent value, $Res Function(WarehouseEvent) then) =
      _$WarehouseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WarehouseEventCopyWithImpl<$Res>
    implements $WarehouseEventCopyWith<$Res> {
  _$WarehouseEventCopyWithImpl(this._value, this._then);

  final WarehouseEvent _value;
  // ignore: unused_field
  final $Res Function(WarehouseEvent) _then;
}

/// @nodoc
abstract class _$$_GetAllWarehousesCopyWith<$Res> {
  factory _$$_GetAllWarehousesCopyWith(
          _$_GetAllWarehouses value, $Res Function(_$_GetAllWarehouses) then) =
      __$$_GetAllWarehousesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllWarehousesCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res>
    implements _$$_GetAllWarehousesCopyWith<$Res> {
  __$$_GetAllWarehousesCopyWithImpl(
      _$_GetAllWarehouses _value, $Res Function(_$_GetAllWarehouses) _then)
      : super(_value, (v) => _then(v as _$_GetAllWarehouses));

  @override
  _$_GetAllWarehouses get _value => super._value as _$_GetAllWarehouses;
}

/// @nodoc

class _$_GetAllWarehouses implements _GetAllWarehouses {
  const _$_GetAllWarehouses();

  @override
  String toString() {
    return 'WarehouseEvent.getAllWarehouses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllWarehouses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllWarehouses,
  }) {
    return getAllWarehouses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllWarehouses,
  }) {
    return getAllWarehouses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllWarehouses,
    required TResult orElse(),
  }) {
    if (getAllWarehouses != null) {
      return getAllWarehouses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllWarehouses value) getAllWarehouses,
  }) {
    return getAllWarehouses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllWarehouses value)? getAllWarehouses,
  }) {
    return getAllWarehouses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllWarehouses value)? getAllWarehouses,
    required TResult orElse(),
  }) {
    if (getAllWarehouses != null) {
      return getAllWarehouses(this);
    }
    return orElse();
  }
}

abstract class _GetAllWarehouses implements WarehouseEvent {
  const factory _GetAllWarehouses() = _$_GetAllWarehouses;
}

/// @nodoc
mixin _$WarehouseState {
  List<WareHouseModel> get warehouseList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WarehouseStateCopyWith<WarehouseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseStateCopyWith<$Res> {
  factory $WarehouseStateCopyWith(
          WarehouseState value, $Res Function(WarehouseState) then) =
      _$WarehouseStateCopyWithImpl<$Res>;
  $Res call({List<WareHouseModel> warehouseList, bool isLoading, bool isError});
}

/// @nodoc
class _$WarehouseStateCopyWithImpl<$Res>
    implements $WarehouseStateCopyWith<$Res> {
  _$WarehouseStateCopyWithImpl(this._value, this._then);

  final WarehouseState _value;
  // ignore: unused_field
  final $Res Function(WarehouseState) _then;

  @override
  $Res call({
    Object? warehouseList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      warehouseList: warehouseList == freezed
          ? _value.warehouseList
          : warehouseList // ignore: cast_nullable_to_non_nullable
              as List<WareHouseModel>,
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
    implements $WarehouseStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
  @override
  $Res call({List<WareHouseModel> warehouseList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, (v) => _then(v as _$_InitialState));

  @override
  _$_InitialState get _value => super._value as _$_InitialState;

  @override
  $Res call({
    Object? warehouseList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_InitialState(
      warehouseList: warehouseList == freezed
          ? _value._warehouseList
          : warehouseList // ignore: cast_nullable_to_non_nullable
              as List<WareHouseModel>,
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
      {required final List<WareHouseModel> warehouseList,
      required this.isLoading,
      required this.isError})
      : _warehouseList = warehouseList;

  final List<WareHouseModel> _warehouseList;
  @override
  List<WareHouseModel> get warehouseList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warehouseList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'WarehouseState(warehouseList: $warehouseList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialState &&
            const DeepCollectionEquality()
                .equals(other._warehouseList, _warehouseList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_warehouseList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      __$$_InitialStateCopyWithImpl<_$_InitialState>(this, _$identity);
}

abstract class _InitialState implements WarehouseState {
  factory _InitialState(
      {required final List<WareHouseModel> warehouseList,
      required final bool isLoading,
      required final bool isError}) = _$_InitialState;

  @override
  List<WareHouseModel> get warehouseList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}
