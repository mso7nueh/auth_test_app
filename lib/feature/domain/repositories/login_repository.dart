import 'package:auth_test_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepository {
  Future<Either<Failure, String>> login(String email, String password);
}