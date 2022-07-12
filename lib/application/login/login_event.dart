part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
const factory LoginEvent.loginWithErrandId(String errandId) = _LoginWithErrandId;
}