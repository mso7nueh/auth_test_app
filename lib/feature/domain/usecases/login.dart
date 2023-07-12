import 'package:auth_test_app/core/error/failure.dart';
import 'package:auth_test_app/core/usecases/usecase.dart';
import 'package:auth_test_app/feature/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Login extends UseCase<String, LoginParams> {
  final LoginRepository loginRepository;

  Login(this.loginRepository);

  @override
  Future<Either<Failure, String>> call(LoginParams params) async {
    return await loginRepository.login(params.email, params.password);
  }
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
