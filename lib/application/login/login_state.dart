part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isDone,
    required bool isError,
    required bool isLoading,
  }) = _LoginStateInitial;
  factory LoginState.initial() =>
      const LoginState(isDone: false, isError: false, isLoading: false);
}
