// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVehicleInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getVehicleInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVehicleInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVehicleInfo value) getVehicleInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetVehicleInfo value)? getVehicleInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVehicleInfo value)? getVehicleInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleEventCopyWith<$Res> {
  factory $VehicleEventCopyWith(
          VehicleEvent value, $Res Function(VehicleEvent) then) =
      _$VehicleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VehicleEventCopyWithImpl<$Res> implements $VehicleEventCopyWith<$Res> {
  _$VehicleEventCopyWithImpl(this._value, this._then);

  final VehicleEvent _value;
  // ignore: unused_field
  final $Res Function(VehicleEvent) _then;
}

/// @nodoc
abstract class _$$_GetVehicleInfoCopyWith<$Res> {
  factory _$$_GetVehicleInfoCopyWith(
          _$_GetVehicleInfo value, $Res Function(_$_GetVehicleInfo) then) =
      __$$_GetVehicleInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetVehicleInfoCopyWithImpl<$Res>
    extends _$VehicleEventCopyWithImpl<$Res>
    implements _$$_GetVehicleInfoCopyWith<$Res> {
  __$$_GetVehicleInfoCopyWithImpl(
      _$_GetVehicleInfo _value, $Res Function(_$_GetVehicleInfo) _then)
      : super(_value, (v) => _then(v as _$_GetVehicleInfo));

  @override
  _$_GetVehicleInfo get _value => super._value as _$_GetVehicleInfo;
}

/// @nodoc

class _$_GetVehicleInfo implements _GetVehicleInfo {
  const _$_GetVehicleInfo();

  @override
  String toString() {
    return 'VehicleEvent.getVehicleInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetVehicleInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVehicleInfo,
  }) {
    return getVehicleInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getVehicleInfo,
  }) {
    return getVehicleInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVehicleInfo,
    required TResult orElse(),
  }) {
    if (getVehicleInfo != null) {
      return getVehicleInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVehicleInfo value) getVehicleInfo,
  }) {
    return getVehicleInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetVehicleInfo value)? getVehicleInfo,
  }) {
    return getVehicleInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVehicleInfo value)? getVehicleInfo,
    required TResult orElse(),
  }) {
    if (getVehicleInfo != null) {
      return getVehicleInfo(this);
    }
    return orElse();
  }
}

abstract class _GetVehicleInfo implements VehicleEvent {
  const factory _GetVehicleInfo() = _$_GetVehicleInfo;
}

/// @nodoc
mixin _$VehicleState {
  VehicleModel get vehicleInfo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleStateCopyWith<VehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleStateCopyWith<$Res> {
  factory $VehicleStateCopyWith(
          VehicleState value, $Res Function(VehicleState) then) =
      _$VehicleStateCopyWithImpl<$Res>;
  $Res call({VehicleModel vehicleInfo, bool isLoading, bool isError});
}

/// @nodoc
class _$VehicleStateCopyWithImpl<$Res> implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._value, this._then);

  final VehicleState _value;
  // ignore: unused_field
  final $Res Function(VehicleState) _then;

  @override
  $Res call({
    Object? vehicleInfo = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleInfo: vehicleInfo == freezed
          ? _value.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleModel,
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
abstract class _$$_startedCopyWith<$Res>
    implements $VehicleStateCopyWith<$Res> {
  factory _$$_startedCopyWith(
          _$_started value, $Res Function(_$_started) then) =
      __$$_startedCopyWithImpl<$Res>;
  @override
  $Res call({VehicleModel vehicleInfo, bool isLoading, bool isError});
}

/// @nodoc
class __$$_startedCopyWithImpl<$Res> extends _$VehicleStateCopyWithImpl<$Res>
    implements _$$_startedCopyWith<$Res> {
  __$$_startedCopyWithImpl(_$_started _value, $Res Function(_$_started) _then)
      : super(_value, (v) => _then(v as _$_started));

  @override
  _$_started get _value => super._value as _$_started;

  @override
  $Res call({
    Object? vehicleInfo = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_started(
      vehicleInfo: vehicleInfo == freezed
          ? _value.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleModel,
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

class _$_started implements _started {
  const _$_started(
      {required this.vehicleInfo,
      required this.isLoading,
      required this.isError});

  @override
  final VehicleModel vehicleInfo;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'VehicleState(vehicleInfo: $vehicleInfo, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_started &&
            const DeepCollectionEquality()
                .equals(other.vehicleInfo, vehicleInfo) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vehicleInfo),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_startedCopyWith<_$_started> get copyWith =>
      __$$_startedCopyWithImpl<_$_started>(this, _$identity);
}

abstract class _started implements VehicleState {
  const factory _started(
      {required final VehicleModel vehicleInfo,
      required final bool isLoading,
      required final bool isError}) = _$_started;

  @override
  VehicleModel get vehicleInfo => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_startedCopyWith<_$_started> get copyWith =>
      throw _privateConstructorUsedError;
}
