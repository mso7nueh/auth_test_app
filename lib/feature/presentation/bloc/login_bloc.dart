import 'dart:async';

import 'package:auth_test_app/core/error/failure.dart';
import 'package:auth_test_app/feature/domain/usecases/login.dart';
import 'package:auth_test_app/feature/presentation/bloc/login_events.dart';
import 'package:auth_test_app/feature/presentation/bloc/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const LOGIN_FAILURE_MESSAGE = 'Login Failure';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Login login;

  LoginBloc({required this.login}) : super(LoginStateEmpty()) {
    on<TryLoginEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(TryLoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginStateLoading());
    final failureOrLogin =
        await login(LoginParams(email: event.email, password: event.password));
    emit(failureOrLogin.fold(
        (failure) => LoginStateError(message: _mapFailureToMessage(failure)),
        (accessToken) => LoginStateLoaded(accessToken: accessToken)));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case LoginFailure:
        return LOGIN_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
