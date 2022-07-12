// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  String get errandId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errandId) loginWithErrandId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errandId)? loginWithErrandId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errandId)? loginWithErrandId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithErrandId value) loginWithErrandId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginWithErrandId value)? loginWithErrandId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithErrandId value)? loginWithErrandId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String errandId});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object? errandId = freezed,
  }) {
    return _then(_value.copyWith(
      errandId: errandId == freezed
          ? _value.errandId
          : errandId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginWithErrandIdCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginWithErrandIdCopyWith(_$_LoginWithErrandId value,
          $Res Function(_$_LoginWithErrandId) then) =
      __$$_LoginWithErrandIdCopyWithImpl<$Res>;
  @override
  $Res call({String errandId});
}

/// @nodoc
class __$$_LoginWithErrandIdCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_LoginWithErrandIdCopyWith<$Res> {
  __$$_LoginWithErrandIdCopyWithImpl(
      _$_LoginWithErrandId _value, $Res Function(_$_LoginWithErrandId) _then)
      : super(_value, (v) => _then(v as _$_LoginWithErrandId));

  @override
  _$_LoginWithErrandId get _value => super._value as _$_LoginWithErrandId;

  @override
  $Res call({
    Object? errandId = freezed,
  }) {
    return _then(_$_LoginWithErrandId(
      errandId == freezed
          ? _value.errandId
          : errandId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginWithErrandId implements _LoginWithErrandId {
  const _$_LoginWithErrandId(this.errandId);

  @override
  final String errandId;

  @override
  String toString() {
    return 'LoginEvent.loginWithErrandId(errandId: $errandId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithErrandId &&
            const DeepCollectionEquality().equals(other.errandId, errandId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errandId));

  @JsonKey(ignore: true)
  @override
  _$$_LoginWithErrandIdCopyWith<_$_LoginWithErrandId> get copyWith =>
      __$$_LoginWithErrandIdCopyWithImpl<_$_LoginWithErrandId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errandId) loginWithErrandId,
  }) {
    return loginWithErrandId(errandId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errandId)? loginWithErrandId,
  }) {
    return loginWithErrandId?.call(errandId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errandId)? loginWithErrandId,
    required TResult orElse(),
  }) {
    if (loginWithErrandId != null) {
      return loginWithErrandId(errandId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithErrandId value) loginWithErrandId,
  }) {
    return loginWithErrandId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginWithErrandId value)? loginWithErrandId,
  }) {
    return loginWithErrandId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithErrandId value)? loginWithErrandId,
    required TResult orElse(),
  }) {
    if (loginWithErrandId != null) {
      return loginWithErrandId(this);
    }
    return orElse();
  }
}

abstract class _LoginWithErrandId implements LoginEvent {
  const factory _LoginWithErrandId(final String errandId) =
      _$_LoginWithErrandId;

  @override
  String get errandId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginWithErrandIdCopyWith<_$_LoginWithErrandId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get isDone => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({bool isDone, bool isError, bool isLoading});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isDone = freezed,
    Object? isError = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateInitialCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateInitialCopyWith(_$_LoginStateInitial value,
          $Res Function(_$_LoginStateInitial) then) =
      __$$_LoginStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isDone, bool isError, bool isLoading});
}

/// @nodoc
class __$$_LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateInitialCopyWith<$Res> {
  __$$_LoginStateInitialCopyWithImpl(
      _$_LoginStateInitial _value, $Res Function(_$_LoginStateInitial) _then)
      : super(_value, (v) => _then(v as _$_LoginStateInitial));

  @override
  _$_LoginStateInitial get _value => super._value as _$_LoginStateInitial;

  @override
  $Res call({
    Object? isDone = freezed,
    Object? isError = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_LoginStateInitial(
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginStateInitial implements _LoginStateInitial {
  const _$_LoginStateInitial(
      {required this.isDone, required this.isError, required this.isLoading});

  @override
  final bool isDone;
  @override
  final bool isError;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoginState(isDone: $isDone, isError: $isError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateInitial &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateInitialCopyWith<_$_LoginStateInitial> get copyWith =>
      __$$_LoginStateInitialCopyWithImpl<_$_LoginStateInitial>(
          this, _$identity);
}

abstract class _LoginStateInitial implements LoginState {
  const factory _LoginStateInitial(
      {required final bool isDone,
      required final bool isError,
      required final bool isLoading}) = _$_LoginStateInitial;

  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateInitialCopyWith<_$_LoginStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
