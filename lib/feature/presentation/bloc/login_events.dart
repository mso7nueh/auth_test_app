import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class TryLoginEvent extends LoginEvent {
  final String email, password;

  const TryLoginEvent({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
