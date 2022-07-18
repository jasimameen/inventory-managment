import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:invendory_managment/new_api/api.dart';

import '../../infrastructure/errand/errand_repo_impl.dart';
import '../../presentation/core/navigation.dart';
import '../../presentation/dashboard/screen_dashboard.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

Api _api = Api();

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<_LoginWithErrandId>((event, emit) async {
      // send loading
      emit(state.copyWith(isLoading: true));

      // try to Login
      await ErrandRepoImpl().initialiazeErrand();


      log('navigatting ...');
      // Api integration
      Navigation.pushAndRemoveUntil(const ScreenDasboard());
    });
  }
}
