import 'package:auth_test_app/core/error/exception.dart';
import 'package:auth_test_app/core/error/failure.dart';
import 'package:auth_test_app/feature/data/datasources/login_remote_data_source.dart';
import 'package:auth_test_app/feature/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginRemoteDataSourceImpl loginRemoteDataSourceImpl;

  LoginRepositoryImpl(
      {required this.loginRemoteDataSourceImpl});

  @override
  Future<Either<Failure, String>> login(String email, String password) async {
    return await _login(() => loginRemoteDataSourceImpl.login(email, password));
  }

  Future<Either<Failure, String>> _login(
      Future<String> Function() login) async {
    try {
      final result = await login();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on LoginFailure {
      return Left(LoginFailure());
    }
  }
}
