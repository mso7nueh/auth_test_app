import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginStateEmpty extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateLoaded extends LoginState {
  final String accessToken;

  const LoginStateLoaded({required this.accessToken});

  @override
  List<Object> get props => [accessToken];
}

class LoginStateError extends LoginState {
  final String message;

  const LoginStateError({required this.message});

  @override
  List<Object> get props => [message];
}
